import 'package:flutter/material.dart';
import 'package:kimper_flutter/styles/my_color.dart';

class MyTextStyle {
  static const headlineMedium = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 1.5,
    letterSpacing: -0.03,
    color: MyColor.black2,
  );

  static const bodyMedium1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    height: 1.5,
    letterSpacing: -0.03,
    color: MyColor.black2,
  );

  static const bodyMedium2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
    letterSpacing: -0.03,
    color: MyColor.black2,
  );

  static const bodySmall1 = TextStyle(
    fontSize: 12,
    height: 1.4,
    letterSpacing: -0.03,
    color: MyColor.gray1,
  );
}
