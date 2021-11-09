import 'package:acumen/global.dart';
import 'package:acumen/style/styles.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acumen/style/resources.dart';

class AppTheme {
  AppTheme._();

  static final textTheme = TextTheme(
    headline1: TextStyles.h1,
    headline2: TextStyles.h2,
    headline3: TextStyles.h3,
    bodyText1: TextStyles.body1,
    bodyText2: TextStyles.body2,
    caption: TextStyles.caption,
    button: TextStyles.body1.copyWith(
      color: Colors.white,

    ),
  );

  static ThemeData get _baseTheme => ThemeData(
        textTheme: textTheme,
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
        fontFamily: Fonts.name,
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          
          style: ElevatedButton.styleFrom(
               padding: EdgeInsets.zero,
            textStyle: TextStyles.h3.copyWith(color: Colors.white),
            elevation: .0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            primary: AppColors.primary,
            onPrimary: Colors.white,
            
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: AppColors.lightGray,
          selectedLabelStyle: TextStyles.body1.copyWith(color: Colors.black,fontWeight: FontWeight.w900),
          unselectedLabelStyle: TextStyles.caption,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
        iconTheme: IconThemeData(
          color: AppColors.grey,
        ),
      );

  static ThemeData get defaultTheme =>
      _baseTheme.copyWith(brightness: Brightness.light);
}
