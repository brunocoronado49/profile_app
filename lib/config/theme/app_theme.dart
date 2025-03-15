import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorSeed = Color(0xFFF9562D);
const scaffoldBackgroundColor = Color(0xCBFFF7F7);

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorSeed,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      titleTextStyle: GoogleFonts.montserratAlternates().copyWith(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black45
      )
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserratAlternates()
        .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.montserratAlternates()
        .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
      titleSmall: GoogleFonts.montserratAlternates()
        .copyWith(fontSize: 20)
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.montserratAlternates()
            .copyWith(fontWeight: FontWeight.w700)
        )
      )
    ),
  );
}

