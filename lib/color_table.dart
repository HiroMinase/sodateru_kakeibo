import 'package:flutter/material.dart';

// 色管理
class ColorTable {
  static const int _primaryWhiteValue = 0xFFF4F8FB;
  static const MaterialColor primaryWhiteColor = MaterialColor(
    _primaryWhiteValue,
    <int, Color>{
      500: Color(_primaryWhiteValue),
    },
  );

  static const int _primaryBlackValue = 0xFF2D2E32;
  static const MaterialColor primaryBlackColor = MaterialColor(
    _primaryBlackValue,
    <int, Color>{
      500: Color(_primaryBlackValue),
    },
  );

  static const int _primaryYellowValue = 0xFFFCDC4A;
  static const MaterialColor primaryYellowColor = MaterialColor(
    _primaryYellowValue,
    <int, Color>{
      500: Color(_primaryYellowValue),
    },
  );
}
