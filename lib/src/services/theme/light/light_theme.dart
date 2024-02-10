import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/colors_theme.dart';

const _theme = Colors.white;
const _opposite = Colors.black;
const _extraColor = Color(0xff767F8C);
const _mainAccent = Color(0xff0BA02C);
const _primaryColor = Color(0xff0A65CC);
const _primaryAccent = Color(0xff042852);
const _extraTextColor = Color(0xff18191C);
const _secondaryAccent = Color(0xffE4E5E8);
const _backgroundColor = Color(0xffEDEFF5);

const lightThemeKey = "#BASE_LIGHT_THEME";
final lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.dark,
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _backgroundColor,
  textTheme: GoogleFonts.interTextTheme(),
  sliderTheme: SliderThemeData(
    trackHeight: 8,
    overlayColor: _theme,
    thumbColor: _primaryColor,
    activeTrackColor: _primaryColor,
    activeTickMarkColor: _primaryColor,
    overlappingShapeStrokeColor: _primaryColor,
    inactiveTrackColor: _extraTextColor.withOpacity(0.1),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: _theme,
    titleTextStyle: TextStyle(
      color: _extraTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(color: _opposite),
    actionsIconTheme: IconThemeData(color: _primaryColor),
  ),
  iconTheme: const IconThemeData(
    color: _primaryColor,
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
      foregroundColor: _extraTextColor,
      surfaceTintColor: _primaryColor,
      textStyle: GoogleFonts.roboto(
        color: _extraTextColor,
        fontWeight: FontWeight.w300,
      ),
      shape: const StadiumBorder(),
      side: const BorderSide(
        width: 0.1,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size.fromHeight(40),
      foregroundColor: _theme,
      backgroundColor: _primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    isCollapsed: false,
    fillColor: _theme,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: _extraColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    errorStyle: TextStyle(fontStyle: FontStyle.italic),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: _extraColor,
      ),
    ),
    outlineBorder: BorderSide(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _primaryColor,
      ),
    ),
    disabledBorder: OutlineInputBorder(),
    focusedErrorBorder: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
    ),
  },
);
