import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/presentation/color_manager__presentation.dart';
import '/presentation/values_manager__presentation.dart';

ThemeData setAppTheme() {
  return ThemeData(
    primaryColor: ColorManager.colorPrimary,
    scaffoldBackgroundColor: ColorManager.colorPrimary,
    textTheme: TextTheme(
      headline4: GoogleFonts.roboto(
        fontSize: AppFonts.fs_24,
        fontWeight: FontWeight.w700,
        color: ColorManager.titleTextColor,
      ),
      headline5: GoogleFonts.roboto(
        fontSize: AppFonts.fs_20,
        fontWeight: FontWeight.w400,
        color: ColorManager.colorPrimaryLighter,
      ),
      headline6: GoogleFonts.roboto(
        fontSize: AppFonts.fs_16,
        fontWeight: FontWeight.w400,
        color: ColorManager.sideTextColor,
      ),
    ),
  );
}
