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
  static TextTheme darkTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 24,
      color: Colors.white60,
    ),
  );

}