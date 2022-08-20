import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  AppProvider();
  bool isCollapse = false;

  toggleCollapse() {
    isCollapse = !isCollapse;
    notifyListeners();
  }
}
