import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/styles_manager__presentation.dart';

import '../presentation/values_manager__presentation.dart';

class ActivityItem extends StatelessWidget {
  final String title;
  final String image;
  final String date;
  final String amount;
  final String time;

  const ActivityItem(
      {required this.title,
      required this.image,
      required this.date,
      required this.amount,
      required this.time,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.pd_24, vertical: AppPadding.pd_8),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppPadding.pd_8, vertical: AppPadding.pd_4),
                    width: AppSize.s_50,
                    height: AppSize.s_60,
                    decoration: BoxDecoration(
                        color: ColorManager.colorPrimaryLight,
                        borderRadius: BorderRadius.circular(AppSize.s_16)),
                    child: SvgPicture.asset(
                      image,
                      width: AppSize.s_20,
                      height: AppSize.s_20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: textStyleNormal(ColorManager.titleTextColor, 18),
                      ),
                      Text(
                        date,
                        style: textStyleNormal(
                            ColorManager.colorPrimaryLighter, 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(children: [
              Text(
                amount,
                style: textStyleNormal(ColorManager.titleTextColor, 18),
              ),
              Text(
                time,
                style: textStyleNormal(ColorManager.colorPrimaryLighter, 16),
              )
            ]),
          ],
        ));
  }
}
