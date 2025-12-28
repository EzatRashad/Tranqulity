import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';

class AppTheme {
  static bool dTheme = false;
  static ThemeMode currentTheme = ThemeMode.light;
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Inter",
    scaffoldBackgroundColor: AppColors.background,

    //  primaryColor: ColorsManager.white,
    // appBarTheme: AppBarTheme(
    //   backgroundColor: AppColors.white,
    //   elevation: 0,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     fontFamily: "montserrat",
    //     color: AppColors.black,
    //     fontSize: 19,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   iconTheme: IconThemeData(
    //     color: AppColors.primary,
    //   ),
    // ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.black,
        fontVariations: [
              FontVariation("wght", 700),
            ],
        fontFamily: "Inter",
        fontSize: 32.sp,
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontVariations: [FontVariation("wght", 400)],
        fontFamily: "Inter",
        fontSize: 24.sp,
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontVariations: [FontVariation("wght", 400)],
        fontFamily: "Inter",
        fontSize: 16.sp,
      ),
    ),
  );
  //-------------------------------------------------------------------------------------------------
  static ThemeData darkTheme = ThemeData(
    fontFamily: "Inter",
    scaffoldBackgroundColor: AppColors.black,

    //  primaryColor: ColorsManager.white,
    // appBarTheme: AppBarTheme(
    //   backgroundColor: AppColors.black,
    //   elevation: 0,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     color: AppColors.white,
    //     fontSize: 19.sp,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   iconTheme: IconThemeData(
    //     color: AppColors.white,
    //   ),
    // ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.white,
        fontVariations: [FontVariation("wght", 700)],
        fontFamily: "Inter",
        fontSize: 32.sp,
      ),
      titleMedium: TextStyle(
        color: AppColors.white,
        fontVariations: [FontVariation("wght", 400)],
        fontFamily: "Inter",
        fontSize: 24.sp,
      ),
      titleSmall: TextStyle(
        color: AppColors.white,
        fontVariations: [FontVariation("wght", 400)],
        fontFamily: "Inter",
        fontSize: 16.sp,
      ),
    ),
  );
}
