import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/colors_theme.dart';

// Primary Colors
const Color _primaryColor = Color(0xFF1A73E8);
const Color _mainSupport = Color(0xFF174EA6);
const Color _primaryAccent = Color(0xFF00897B);

// Secondary Colors

// Neutral Colors
const Color _backgroundColor = Color(0xFFECEFF1);
const Color _extraColor = Color(0xFF4A4A4A);

// Accent Colors
const Color _secondaryAccent = Color(0xFFF57C00);
const Color _mainAccent = Color(0xFFD81B60);
const Color _secondarySupport = Color(0xFFFF5252);

const _theme = Colors.white;
const _opposite = Colors.black;
const _extraTextColor = Color(0xff18191C);

const lightThemeKey = "#BASE_LIGHT_THEME";
final lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.dark,
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _backgroundColor,
  textTheme: GoogleFonts.interTextTheme().merge(
    TextTheme(
      titleMedium: GoogleFonts.sofia(
        fontSize: 24,
        color: _opposite,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 16,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      foregroundColor: _primaryColor,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: _mainSupport,
      surfaceTintColor: _mainSupport,
      textStyle: GoogleFonts.roboto(
        color: _extraTextColor,
        // fontWeight: FontWeight.w300,
      ),
      shape: const StadiumBorder(),
      side: const BorderSide(
        width: 0.1,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 2,
      shape: const StadiumBorder(),
      minimumSize: const Size.fromHeight(40),
      foregroundColor: _theme,
      backgroundColor: _mainAccent,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
      ),
    ),
  ),
  extensions: {
    ColorTheme(
      theme: _theme,
      opposite: _opposite,
      extra: _extraColor,
      mainAccent: _mainAccent,
      primary: _primaryColor,
      primaryAccent: _primaryAccent,
      mainText: _extraTextColor,
      secondaryAccent: _secondaryAccent,
      mainBackground: _backgroundColor,
      mainSupport: _mainSupport,
      secondarySupport: _secondarySupport,
    ),
  },
);
