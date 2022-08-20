import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _fontStyle(Color color, double fontSize, FontWeight fontWeight) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}


TextStyle textStyleBold(Color color, double fontSize) {
  return _fontStyle(color, fontSize, FontWeight.w700);
}

TextStyle textStyleNormal(Color color, double fontSize) {
  return _fontStyle(color, fontSize, FontWeight.w400);
}

