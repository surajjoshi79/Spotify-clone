import 'package:flutter/material.dart';

ThemeData darkMode=ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.black,
    secondary: Colors.white10,
    tertiary: Colors.white30,
    inversePrimary: Colors.white,
  )
);

ThemeData lightMode=ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.white,
    secondary: Colors.black12,
    tertiary: Colors.black38,
    inversePrimary: Colors.black
  )
);