import 'package:flutter/material.dart';
import 'color_palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: 'Inter',
    textTheme: TextTheme(
      displayLarge: displayLargeBold,
      displayMedium: displayLargeMedium,
      displaySmall: displaySmallMedium,
      bodyLarge: textLargeRegular,
      bodyMedium: textMediumRegular,
      bodySmall: textSmallRegular,
      labelSmall: textSmallMedium,
      titleLarge: textLargeBold,
      titleSmall: textSmallBold,
    ).apply(fontSizeFactor: 1.sp),
    scaffoldBackgroundColor: Palette.textColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: CircleBorder(),
      // backgroundColor: Palette.iconColor,
    ),
    appBarTheme:
        const AppBarTheme(elevation: 0, backgroundColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Palette.buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
  );

  static TextStyle displayLargeBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Palette.regularTextColor,
  );
  static TextStyle displayLargeMedium = TextStyle(
    fontFamily: "Inter",
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    height: 1.18,
    color: Palette.regularTextColor,
  );
  static TextStyle displayMediumBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    height: 1.38,
    color: Palette.regularTextColor,
  );

  static TextStyle displaySmallBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    height: 1.5,
    color: Palette.regularTextColor,
  );
  static TextStyle displayPSmallBold = TextStyle(
    fontFamily: "Poppins",
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    height: 1.5,
    color: Palette.regularTextColor,
  );
  static TextStyle displaySmallMedium = TextStyle(
    fontFamily: "Inter",
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: Palette.regularTextColor,
  );
  static TextStyle textLargeBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Palette.regularTextColor,
  );

  static TextStyle textLargeRegular = TextStyle(
    fontFamily: "Inter",
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: Palette.regularTextColor,
  );
  static TextStyle textMediumBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    height: 1.38,
    color: Palette.regularTextColor,
  );

  static TextStyle textMediumRegular = TextStyle(
    fontFamily: "Inter",
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    height: 1.38,
    color: Palette.regularTextColor,
  );
  static TextStyle textSmallBold = TextStyle(
    fontFamily: "Inter",
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    height: 1.36,
    color: Palette.regularTextColor,
  );
  static TextStyle textSmallMedium = TextStyle(
    fontFamily: "Inter",
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.36,
    color: Palette.regularTextColor,
  );
  static TextStyle textSmallRegular = TextStyle(
    fontFamily: "Inter",
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.36,
    color: Palette.regularTextColor,
  );
}
