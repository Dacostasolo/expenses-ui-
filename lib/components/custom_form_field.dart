import 'package:expendature_firebase/presentation/styles_manager__presentation.dart';
import 'package:flutter/material.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';

class CustomFormField extends StatefulWidget {
  // final FocusNode _focusNode;
  final TextEditingController _controller;
  final TextInputType _inputType;
  final TextInputAction _inputAction;
  final String _label;
  final String _hint;
  final Function(String) _validate;
  final bool isObscured;
  final bool isCapitalized;
  final int maxLines;
  final bool isLabelEnabled;
  bool _obscured;

  CustomFormField(
      {required TextEditingController controller,
      required TextInputType inputType,
      required TextInputAction inputAction,
      required String label,
      required String hint,
      required Function(String) validate,
      this.maxLines = 1,
      this.isCapitalized = false,
      this.isLabelEnabled = true,
      this.isObscured = false,
      Key? key})
      : _controller = controller,
        _inputType = inputType,
        _inputAction = inputAction,
        _label = label,
        _hint = hint,
        _validate = validate,
        _obscured = isObscured,
        super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  IconData _icon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget._label,
          style: textStyleBold(ColorManager.titleTextColor, AppFonts.fs_12),
        ),
        SizedBox(
          height: AppSize.s_2,
        ),
        TextFormField(
          style: Theme.of(context).textTheme.headline5,
          controller: widget._controller,
          cursorColor: ColorManager.titleTextColor,
          maxLines: widget.maxLines,
          keyboardType: widget._inputType,
          textInputAction: widget._inputAction,
          obscureText: widget._obscured,
          validator: (value) => widget._validate(value!),
          textCapitalization: widget.isCapitalized
              ? TextCapitalization.words
              : TextCapitalization.none,
          decoration: InputDecoration(
            suffixIcon: widget.isObscured
                ? IconButton(
                    splashColor: Colors.transparent,
                    icon: Icon(
                      _icon,
                      color: ColorManager.titleTextColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _icon = _icon == Icons.visibility_off
                            ? Icons.visibility
                            : Icons.visibility_off;
                        widget._obscured = !widget._obscured;
                      });
                    },
                  )
                : null,
            filled: true,
            fillColor: ColorManager.colorPrimaryLight,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s_8),
              borderSide: BorderSide.none,
            ),
            labelText: widget.isLabelEnabled ? widget._label : null,
            labelStyle: Theme.of(context).textTheme.headline5,
            hintText: widget._hint,
            hintStyle: Theme.of(context).textTheme.headline6,
            errorStyle: TextStyle(
              color: ColorManager.colorPrimaryLighter,
              fontWeight: FontWeight.bold,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s_8),
              borderSide: BorderSide(
                color: ColorManager.colorPrimaryLight,
                width: AppSize.s_1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s_8),
              borderSide: BorderSide(
                color: ColorManager.colorPrimaryLighter,
                width: AppSize.s_1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s_8),
              borderSide: BorderSide(
                color: ColorManager.colorPrimaryLighter,
                width: AppSize.s_1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.s_8),
                borderSide: BorderSide(
                  color: ColorManager.colorPrimaryLighter,
                  width: AppSize.s_1,
                )),
          ),
        )
      ],
    );
  }
}
