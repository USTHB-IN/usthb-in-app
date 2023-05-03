import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: kBlue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w600,
          color: kBlack,
        ),
        labelLarge: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: kBlack,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: kBlack,
        ),
        titleMedium: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: kBlack,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: kBlack,
        ),
        labelMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: kBlack,
        ),
        displayLarge: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: kBlack,
        )),
    inputDecorationTheme: InputDecorationTheme(
      border: kTextInputOutline,
      focusedBorder: kTextInputOutlineFocus,
      errorBorder: kTextInputOutlineError,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 15.sp),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: kBlue,
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        minimumSize: Size(double.infinity, 47.sp),
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: kWhite,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius,
        ),
      ),
    ),
  );
}
