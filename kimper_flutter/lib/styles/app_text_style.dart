import 'package:flutter/material.dart';
import 'package:kimper_flutter/styles/app_color.dart';

class AppTextStyle {
  static const headlineMedium = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 1.5,
    letterSpacing: -0.03,
    color: AppColor.black2,
  );

  static const bodyMedium1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.5,
    letterSpacing: -0.03,
    color: AppColor.black2,
  );

  static const bodyMedium2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
    letterSpacing: -0.03,
    color: AppColor.black2,
  );

  static const bodySmall1 = TextStyle(
    fontSize: 12,
    height: 1.4,
    letterSpacing: -0.03,
    color: AppColor.gray1,
  );
}
