import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  static const routeName = '/statistics';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('StatisticsScreen'),
      ),
    );
  }
}
