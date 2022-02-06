import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    var appBarTheme = AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme,
    );
    return ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: appBarTheme);
  }

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  static Color creamcolor = Color(0xfff5f5f5);

  static Color darkbluecolor = Colors.black87;
}
