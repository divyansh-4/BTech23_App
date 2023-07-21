import 'package:flutter/material.dart';

class InductionAppColor {
  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
    ),
    primaryColor: Colors.deepPurple,
    hintColor: Colors.deepPurpleAccent,
    primaryColorDark: Colors.deepPurple[700],
    primaryColorLight: Colors.deepPurple[200],
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    dividerTheme: const DividerThemeData(thickness: 0.8),
    chipTheme: const ChipThemeData(
      padding: EdgeInsets.zero,
      labelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.normal,
      ),
    ),
    listTileTheme: const ListTileThemeData(
      dense: true,
      minVerticalPadding: 9,
      minLeadingWidth: 0,
      enableFeedback: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25),
      visualDensity: VisualDensity.compact,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      labelStyle: const TextStyle(fontSize: 14),
      filled: true,
      fillColor: const Color(0xFF3E4358),
      border: OutlineInputBorder(
          borderSide: BorderSide.none, borderRadius: BorderRadius.circular(24)),
      floatingLabelBehavior: FloatingLabelBehavior.never,
    ),
  );
}
