import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:oech/presentation/style/colors.dart';

abstract class fontStyle {
  static TextStyle blueMain = const TextStyle(
      color: colors.mainColor, fontWeight: FontWeight.w700, fontSize: 24);
  static TextStyle description = const TextStyle(
      color: colors.name_label, fontWeight: FontWeight.w400, fontSize: 16);
  static TextStyle btnTxt_Blue = const TextStyle(
      color: colors.mainColor, fontWeight: FontWeight.w700, fontSize: 14);
}
