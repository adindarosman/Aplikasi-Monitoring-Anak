import 'package:flutter/material.dart';

class AppImages {
  static String get logo => "assets/images/logo.png";
  static String get profilePic => "assets/images/new_profile_picture.png";

  static Future<void> loadCache(BuildContext context) {
    return Future.wait([
      precacheImage(Image.asset(AppImages.profilePic).image, context),
      precacheImage(Image.asset(AppImages.logo).image, context),
    ]);
  }
}
