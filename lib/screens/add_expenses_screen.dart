import 'package:flutter/material.dart';

class AddExpensesScreen extends StatefulWidget {
  const AddExpensesScreen({Key? key}) : super(key: key);

  @override
  State<AddExpensesScreen> createState() => _AddExpensesScreenState();

  static const routeName = '/add-expenses';
}

class _AddExpensesScreenState extends State<AddExpensesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            
          ]),
        ),
      ),
    );
  }
}
