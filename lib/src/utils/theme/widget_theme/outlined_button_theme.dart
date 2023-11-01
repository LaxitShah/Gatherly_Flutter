import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class AOutlinedThemeData{

  AOutlinedThemeData._();

  static final lightOutlinedButtonTheme=OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
      side:const BorderSide(color: Colors.black87),
      foregroundColor: Colors.black,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding:EdgeInsets.symmetric(vertical: AButtonHeight),
    ),

  );

  static final darkOutlinedButtonTheme=OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
      side:const BorderSide(color: Colors.white),
      foregroundColor: Colors.white,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding:EdgeInsets.symmetric(vertical: AButtonHeight),
    ),

  );
}