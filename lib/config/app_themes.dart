// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 24),
        headline2: GoogleFonts.montserrat(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 22),
        headline3: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 20),
        bodyText1: const TextStyle(color: Colors.black87, fontSize: 16)),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24),
        headline2: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 22),
        headline3: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 20),
        headline6: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 12)),
  );
}
