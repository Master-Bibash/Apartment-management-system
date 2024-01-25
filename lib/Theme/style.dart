import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  final Color primary = Color(0xFF2B586E);
  final Color defaultTextColor = Color(0xFFf8fbfc);
  final Color forgotcolor = Color(0xFF74AEC9);
  final Color btncolor= Color(0xFF142933);

  return ThemeData(
    primaryColor: defaultTextColor,
    shadowColor: forgotcolor,
  buttonTheme: ButtonThemeData(
    buttonColor: btncolor
  ),
    scaffoldBackgroundColor: primary,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: defaultTextColor,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        fontSize: 24.sp,
      ),
      bodySmall: TextStyle(
        color: defaultTextColor,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        fontSize: 14.sp,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: defaultTextColor, primary: primary),
  );
}
