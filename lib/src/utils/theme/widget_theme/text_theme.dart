// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ATextTheme
{
  static TextTheme lightTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.black54,
    ),

  );
    static TextTheme lightTextTheme=TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 28,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
      headline2: GoogleFonts.montserrat(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      headline6:GoogleFonts.poppins(
        fontSize: 16,
        color:Colors.black,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
  );
  static TextTheme darkTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.white60,
    ),
  );
  static TextTheme darkTextTheme=TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.montserrat(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    )
  );

}