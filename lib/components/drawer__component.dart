import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/styles_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';
import '../provider/app__provider.dart';
import '../screens/add_expenses_screen.dart';
import '../screens/analytics__screen.dart';
import '../screens/statistics__screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    final isCollapse = provider.isCollapse;
    final alignment =
        isCollapse ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return Container(
      width: isCollapse ? AppSize.s_50 : null,
      child: Drawer(
        backgroundColor: ColorManager.colorPrimaryLighter,
        child: Column(crossAxisAlignment: alignment, children: [
          _buildDrawerHeader("Dacosta Solomon",
              "asset/img/jonas-kakaroto-mjRwhvqEC0U-unsplash.jpg", isCollapse),
          _buildDrawerItem(context, AddExpensesScreen.routeName, 'Add Expenses',
              Icons.add, isCollapse),
          SizedBox(
            height: AppSize.s_16,
          ),
          _buildDrawerItem(context, AnalyticsScreen.routeName,
              'Expenses analysis', Icons.analytics, isCollapse),
          SizedBox(
            height: AppSize.s_16,
          ),
          _buildDrawerItem(context, StatisticsScreen.routeName, 'Statistics',
              Icons.auto_graph, isCollapse),
          Baseline(
              baseline: 100,
              baselineType: TextBaseline.alphabetic,
              child: _buildCollapseIcon(context, isCollapse))
        ]),
      ),
    );
  }

  Widget _buildCollapseIcon(BuildContext context, bool isCollapse) {
    double size = AppSize.s_24;
    final align = isCollapse ? Alignment.bottomCenter : Alignment.bottomRight;
    IconData icon = isCollapse ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    return InkWell(
      onTap: () {
        Provider.of<AppProvider>(context, listen: false).toggleCollapse();
      },
      child: Container(
        alignment: align,
        padding: EdgeInsets.all(AppSize.s_8),
        child: Material(
          color: Colors.transparent,
          child: SizedBox(
            width: size,
            height: size,
            child: Icon(icon, color: ColorManager.titleTextColor),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(String title, String imgUrl, bool isCollapse) {
    return DrawerHeader(
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: !isCollapse
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: !isCollapse ? AppSize.s_50 : AppSize.s_20,
                child: ClipRRect(
                  borderRadius: isCollapse
                      ? BorderRadius.circular(AppSize.s_20)
                      : BorderRadius.circular(AppSize.s_50),
                  child: Image.asset(
                    imgUrl,
                    height: isCollapse ? AppSize.s_20 : AppSize.s_100,
                    width: isCollapse ? AppSize.s_20 : AppSize.s_100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: AppSize.s_8,
              ),
              isCollapse
                  ? Container()
                  : Text(
                      title,
                      style: TextStyle(
                          fontSize: AppSize.s_20,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.colorPrimaryLight),
                    ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String routeName, String text,
      IconData icon, bool isCollapse) {
    return Padding(
      padding: !isCollapse
          ? EdgeInsets.only(left: AppSize.s_20)
          : const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: SizedBox(
          width: 200,
          child: Row(
              mainAxisAlignment: !isCollapse
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                !isCollapse
                    ? Text(text,
                        style: textStyleBold(
                            ColorManager.titleTextColor, AppFonts.fs_18))
                    : Container(),
                Icon(
                  icon,
                  size: AppSize.s_30,
                  color: ColorManager.titleTextColor,
                )
              ]),
        ),
      ),
    );
  }
}
