import 'package:expendature_firebase/presentation/color_manager__presentation.dart';
import 'package:expendature_firebase/presentation/styles_manager__presentation.dart';
import 'package:expendature_firebase/presentation/values_manager__presentation.dart';
import 'package:expendature_firebase/provider/app__provider.dart';
import 'package:expendature_firebase/screens/add_expenses_screen.dart';
import 'package:expendature_firebase/screens/analytics__screen.dart';
import 'package:expendature_firebase/screens/statistics__screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDrawerTwo extends StatelessWidget {
  CustomDrawerTwo({super.key});

  final List<DrawerItem> _buildDrawerItemList = [
    DrawerItem(
        icon: Icons.add,
        title: "Add activity",
        routeName: AddExpensesScreen.routeName),
    DrawerItem(
        icon: Icons.auto_graph,
        title: "Check Statistics",
        routeName: StatisticsScreen.routeName),
    DrawerItem(
        icon: Icons.analytics,
        title: "Analysis",
        routeName: AnalyticsScreen.routeName)
  ];

  @override
  Widget build(BuildContext context) {
    final isCollapse = Provider.of<AppProvider>(context).isCollapse;
    final width = isCollapse ? AppSize.s_50 : null;
    return Container(
      width: width,
      child: Drawer(
        backgroundColor: ColorManager.colorPrimaryLight,
        child: Column(
          children: [
            _buildDrawerHeader("Dacosta Solomon", isCollapse),
            _buildList(isCollapse),
            const Spacer(),
            Align(
                alignment:
                    isCollapse ? Alignment.center : Alignment.bottomRight,
                child: _buildToggleCollapse(context, isCollapse))
          ],
        ),
      ),
    );
  }

  Widget _buildList(bool isCollapse) => ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, i) => _builDrawerItem(
          context,
          isCollapse,
          _buildDrawerItemList[i].title,
          _buildDrawerItemList[i].icon,
          _buildDrawerItemList[i].routeName),
      separatorBuilder: (context, index) => SizedBox(
            height: AppSize.s_12,
          ),
      itemCount: _buildDrawerItemList.length);

  Widget _builDrawerItem(BuildContext context, bool isCollapse, String title,
      IconData icon, String routeName) {
    return isCollapse
        ? Material(
            color: Colors.transparent,
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, routeName),
              title: Icon(
                icon,
                color: ColorManager.titleTextColor,
              ),
            ),
          )
        : Material(
            color: Colors.transparent,
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, routeName),
              leading: Icon(
                icon,
                color: ColorManager.titleTextColor,
              ),
              title: Text(
                title,
                style: textStyleNormal(
                    ColorManager.titleTextColor, AppFonts.fs_20),
              ),
            ),
          );
  }

  Widget _buildToggleCollapse(BuildContext context, bool isCollapse) {
    final icon = isCollapse ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final align = isCollapse ? Alignment.bottomCenter : Alignment.bottomRight;
    return InkWell(
      onTap: () {
        Provider.of<AppProvider>(context, listen: false).toggleCollapse();
      },
      child: Material(
        color: Colors.transparent,
        child: Container(
          alignment: align,
          width: isCollapse ? double.infinity : AppSize.s_50,
          padding: EdgeInsets.all(AppSize.s_8),
          child: Icon(icon, color: ColorManager.titleTextColor),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(String title, bool isCollapse) {
    return isCollapse
        ? DrawerHeader(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSettingButton(isCollapse),
              SizedBox(
                height: AppSize.s_20,
              ),
              _buildDrawerImage(isCollapse),
            ],
          ))
        : DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDrawerImage(isCollapse),
                      SizedBox(
                        height: AppSize.s_8,
                      ),
                      Text(
                        title,
                        style: textStyleNormal(
                          ColorManager.colorPrimaryLighter,
                          AppFonts.fs_18,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: _buildSettingButton(isCollapse),
                )
              ],
            ),
          );
  }

  Widget _buildSettingButton(bool isCollapse) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: isCollapse ? double.infinity : null,
        child: Material(
          color: Colors.transparent,
          child: Icon(
            Icons.settings,
            color: ColorManager.titleTextColor,
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerImage(bool isCollapse) {
    final width = isCollapse ? AppSize.s_20 : AppSize.s_50;
    final height = isCollapse ? AppSize.s_20 : AppSize.s_100;
    return CircleAvatar(
      radius: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width),
        child: Image.asset(
          "asset/img/jonas-kakaroto-mjRwhvqEC0U-unsplash.jpg",
          width: height,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DrawerItem {
  final IconData icon;
  final String title;
  final String routeName;

  DrawerItem(
      {required this.icon, required this.title, required this.routeName});
}
