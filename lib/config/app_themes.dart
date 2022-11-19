// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: Colors.green,
    useMaterial3: true,
    textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24),
        headline2: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 22),
        headline3: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 20),
        headline4: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 14),
        headline5: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 16),
        headline6: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 12)),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.green,
    useMaterial3: true,
    textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24),
        headline2: GoogleFonts.montserrat(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 22),
        headline3: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 20),
        headline4: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 14),
        headline5: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 16),
        headline6: const TextStyle(
            fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 12)),
  );
}
