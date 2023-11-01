import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class AElevatedButtonTheme {
  AElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation:0,
      side:const BorderSide(color: Colors.black),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black87,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding:EdgeInsets.symmetric(vertical: AButtonHeight),
    ),

  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation:0,
      side:const BorderSide(color: Colors.black),
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding:EdgeInsets.symmetric(vertical: AButtonHeight),
    ),

  );

}
