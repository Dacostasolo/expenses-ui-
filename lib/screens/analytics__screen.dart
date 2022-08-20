import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  static const routeName = '/analytics';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('StatisticsScreen'),
      ),
    );
  }
}
