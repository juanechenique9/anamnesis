import 'package:flutter/material.dart';

class AppTheme {

  ThemeData getTheme() => ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    colorSchemeSeed: Color(0xFF10121F),
  );
}