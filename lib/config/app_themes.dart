// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        headline2: GoogleFonts.montserrat(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 24),
        bodyText1: const TextStyle(color: Colors.black87, fontSize: 16)),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
