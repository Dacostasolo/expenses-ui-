import 'package:flutter/material.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/styles_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';

class ActivityTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  const ActivityTitle(
      {required this.title,
      required this.subtitle,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.pd_16, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textStyleBold(Colors.white, 20),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              subtitle,
              style: textStyleNormal(ColorManager.sideTextColor, 12),
            ),
          )
        ],
      ),
    );
  }
}
