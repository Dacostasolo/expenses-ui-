import 'package:flutter/material.dart';

class ColorManager {
  //#09031c
  // static Color colorPrimary = HexColor.fromHex('#22134d');
  static Color colorPrimary = HexColor.fromHex('#09031c');
  static Color colorPrimaryLight = HexColor.fromHex('#22134d');
  //#3f316a
  //#281b54
  static Color colorPrimaryLighter = HexColor.fromHex('#3f316a');
  static Color colorBlue = HexColor.fromHex('#5825fa');
  static Color titleTextColor = HexColor.fromHex('#878787');
  static Color sideTextColor = HexColor.fromHex('##b25fbb');
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.replaceAll('#', '');
    if (hexString.length == 6) {
      hexString = 'FF$hexString';
    }
    return Color(int.parse(hexString, radix: 16));
  }
}

// #130041
