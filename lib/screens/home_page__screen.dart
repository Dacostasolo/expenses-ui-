import '../components/activity__component.dart';
import '../components/activity_title__component.dart';

import '../components/bank_card__component.dart';
import '../components/drawer__component.dart';
import '../model/bank_card__model.dart';
import 'package:intl/intl.dart';

import '../components/app_bar__component.dart';
import '../model/expenditure__model.dart';
import '../presentation/color_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../presentation/styles_manager__presentation.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSize.s_8),
      child: Scaffold(
        drawer: CustomDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return AppBarComponent(
                      title:
                          NumberFormat.currency(symbol: "\$", decimalDigits: 2)
                              .format(439323.23),
                      subtitle: "0000035BC",
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                }),
                SizedBox(
                  height: AppSize.s_30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: AppPadding.pd_16),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Cards",
                          style: textStyleBold(
                              ColorManager.titleTextColor, AppFonts.fs_24),
                        ),
                        SizedBox(
                          height: AppSize.s_8,
                        ),
                        SizedBox(
                          height: AppSize.s_250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, i) {
                              return BankCard(
                                  cardBalance: getBankCards[i].bankCardBalance,
                                  cardNumber: getBankCards[i].bankCardNumber,
                                  cardType: getBankCards[i].bankCardTypeName,
                                  sourceOfFunds: getBankCards[i].sourceOfFunds,
                                  date: DateFormat.yM().toString());
                            }),
                            itemCount: getBankCards.length,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.s_30,
                ),
                ActivityTitle(
                  title: "Resent activities",
                  subtitle: "See all",
                  onPressed: () {},
                ),
                SizedBox(
                  height: AppSize.s_8,
                ),
                SizedBox(
                  height: AppSize.s_250,
                  child: ListView.builder(
                    itemBuilder: (context, i) => ActivityItem(
                        time: getExpenditure[i].time,
                        date: getExpenditure[i].date,
                        amount: getExpenditure[i].amount,
                        image: getExpenditure[i].iconUrl,
                        title: getExpenditure[i].title),
                    itemCount: getExpenditure.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
