import 'package:flutter/material.dart';
import 'package:flutter_11_bmi_calculator/config/colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    background: LBgColor,
    primary: LPrimaryColor,
    onBackground: LFontColor,
    primaryContainer: LDviColor,
    onPrimaryContainer: LFontColor,
    onSecondaryContainer: LLableColor,
  ),
);


var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    background: DBgColor,
    primary: DPrimaryColor,
    onBackground: DFontColor,
    primaryContainer: DDviColor,
    onPrimaryContainer: DFontColor,
    onSecondaryContainer: DLableColor,
  ),
);



