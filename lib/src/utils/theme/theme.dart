import 'package:f1/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:f1/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:f1/src/utils/theme/widget_theme/text_theme.dart';
import 'package:flutter/material.dart';
class AThemeData{

  //we don't want user to access our theme using instance of class so we make it private
  //_means private

  AThemeData._();

  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.light,

    textTheme:ATextTheme.lightTheme,
    outlinedButtonTheme: AOutlinedThemeData.lightOutlinedButtonTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    // useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme:ATextTheme.darkTheme,
      outlinedButtonTheme: AOutlinedThemeData.darkOutlinedButtonTheme,
      elevatedButtonTheme:AElevatedButtonTheme.darkElevatedButtonTheme,
  );
  static ThemeMode themeMode = ThemeMode.system;
}