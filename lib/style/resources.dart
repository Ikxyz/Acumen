import 'package:acumen/global.dart';
import 'package:flutter/material.dart';

class AppIcons {
  static String iconPath(String ico, [String ext = "png"]) =>
      'assets/icons/$ico.$ext';
  static String get backButton => iconPath('back_button');
  static String get call => iconPath('call');
  static String get filter => iconPath('filter');
  static String get home => iconPath('home');
  static String get location => iconPath('location');
  static String get profile => iconPath('profile');
  static String get search => iconPath('search');
  static String get send => iconPath('send');
  static String get tick => iconPath('tick');
  static String get users => iconPath('users');
  static String get voice => iconPath('voice');
}

class AppImages {
  static String imagePath(String img, [String ext = "png"]) =>
      'assets/images/$img.$ext';
  static String get logo => imagePath('logo');
  static String get onboarding => imagePath("onboarding");
  static String get dog1 => imagePath("dog1", "jpeg");
  static String get dog2 => imagePath("dog2", "jpeg");
  static String get dog3 => imagePath("dog3", "jpeg");
  static String get dog4 => imagePath("dog4", "jpeg");
  static String get profilePhoto => imagePath("profile_photo");
  static String get profilePhoto1 => imagePath("profile_photo_1");
  static String get profilePhoto2 => imagePath("profile_photo_2");
  static String get profilePhoto3 => imagePath("profile_photo_3");
  static String get profilePhoto4 => imagePath("profile_photo_4");
  static String get profilePhoto5 => imagePath("profile_photo_5");
  static String get profilePhoto6 => imagePath("profile_photo_6");
}

class AppColors {
  static Color get primary => const Color(0xFFFB724C);

  static Color get baseDark => const Color(0xFF161616);
  static Color get baseLight => const Color(0xFFFCFCFC);
  static Color get grey => const Color(0xFF383838);
  static Color get grey2 => const Color(0xFF515153);
  static Color get lightGray => const Color(0xFFAEAEB2);
  static Color get lightGray2 => const Color(0xFFB0B0B0);
  static Color get mute => const Color(0xFFF0F0F0);
  static Color get info => const Color(0xFF3B5998);
  static Color get warning => const Color(0xFFFFCB55);

  static Color get other => const Color(0xFFF6D5DC);
  static Color get other1 => const Color(0xFFFBE0D8);
  static Color get dark => const Color(0xFF202020);



  static Color get scaffoldColor => baseLight;

  static Color get errorColor => const Color(0xFFE73A40);

  static LinearGradient get primaryGradient =>
      LinearGradient(
      stops: [0.7,0.8],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [primary, Color(0xFFFE904B)]);

  static RadialGradient get gradient =>
      const RadialGradient(colors: [Color(0xFFFB7A4B), Color(0xFF9C2CF3)]);
}

