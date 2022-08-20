import 'package:intl/intl.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/styles_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final String sourceOfFunds;
  final double cardBalance;
  final String date;

  const BankCard(
      {required this.cardBalance,
      required this.cardNumber,
      required this.cardType,
      required this.sourceOfFunds,
      required this.date,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: AppPadding.pd_12),
      width: AppSize.s_200,
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.pd_8, horizontal: AppPadding.pd_12),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     ColorManager.colorPrimaryLighter,
        //     cardColor,
        //   ],
        //   begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        // ),
        color: ColorManager.colorPrimaryLight,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(cardType,
                  style: textStyleBold(
                      ColorManager.titleTextColor, AppFonts.fs_24)),
              trailing: const Icon(Icons.more_vert_rounded),
            ),
            SizedBox(
              height: AppSize.s_30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    sourceOfFunds,
                    style: textStyleNormal(Colors.grey, AppFonts.fs_20),
                  ),
                  SizedBox(
                    height: AppSize.s_4,
                  ),
                  Text(
                      NumberFormat.currency(symbol: '\$', decimalDigits: 1)
                          .format(cardBalance),
                      style: textStyleBold(ColorManager.titleTextColor, 30)),
                  SizedBox(
                    height: AppSize.s_20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardNumber,
                        style: textStyleNormal(
                            ColorManager.titleTextColor, AppFonts.fs_16),
                      ),
                      // Text(date,
                      //     style: textStyleNormal(
                      //         ColorManager.titleTextColor, AppFonts.fs_12)),
                    ],
                  ),
                ],
              )),
            )
          ]),
    );
  }
}
