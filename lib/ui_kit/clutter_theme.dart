import 'package:flutter/material.dart';

class ClutterTheme {
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData darkTheme =
      _dynamicThemeData(_darkColorScheme, _darkFocusColor);

  static ThemeData _dynamicThemeData(
      ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xff78dc77),
    onPrimary: Color(0xff00390a),
    secondary: Color(0xffbaccb3),
    onSecondary: Color(0xff253423),
    background: Color(0xff1a1c19),
    onBackground: Color(0xffe2e3dd),
    surface: Color(0xff1a1c19),
    onSurface: Color(0xffe2e3dd),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
  );

  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 96,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 60,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: -0.5,
    ),
    displaySmall: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 48,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 24,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.15,
    ),
    titleMedium: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 1.25,
    ),
    labelSmall: TextStyle(
      color: Color(0xffe2e3dd),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Raleway',
      letterSpacing: 1.5,
    ),
  );
}
