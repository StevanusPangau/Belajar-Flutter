import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.blueAccent;
  static const _primaryColorDark = Colors.lightGreenAccent;

  static final ThemeData lighTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light));

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorDark, brightness: Brightness.dark));
}
