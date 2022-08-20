import 'package:expendature_firebase/provider/app__provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/expenses_theme__presentation.dart';
import '../screens/add_expenses_screen.dart';
import '../screens/analytics__screen.dart';
import '../screens/home_page__screen.dart';
import '../screens/statistics__screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: setAppTheme(),
        initialRoute: HomePageScreen.routeName,
        routes: {
          HomePageScreen.routeName: (context) => HomePageScreen(),
          StatisticsScreen.routeName: (context) => const StatisticsScreen(),
          AnalyticsScreen.routeName: (context) => const AnalyticsScreen(),
          AddExpensesScreen.routeName: (context) => const AddExpensesScreen(),
        },
      ),
    );
  }
}
