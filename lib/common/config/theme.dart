import 'package:flutter/material.dart';

// Surfaces
const backgroundColor = Color(0xFFF7F7F7);
const surfaceColor = Color(0xFFFFFBFE);
const shadowColor = Color(0xFF171829);

// Accents
const primaryColor = Color(0xFF6750A4);
const secondaryColor = Color(0xFF46D99D);
const tertiaryColor = Color(0xFFFFCCD0);

const unselectedColor = Color(0xFFEEE8F4);

// Text
const normalTextColor = Color(0x000000);
const fadedTextColor = Color(0xFF787579);
const onSurfaceTextColor = Color(0xFFFFFFFF);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  surface: surfaceColor,
  onSurface: primaryColor,
  outline: fadedTextColor,
  surfaceVariant: surfaceColor,
  onSurfaceVariant: normalTextColor,
  background: backgroundColor,
  onBackground: normalTextColor,
  shadow: shadowColor,
  primary: primaryColor,
  onPrimary: onSurfaceTextColor,
  secondary: secondaryColor,
  onSecondary: onSurfaceTextColor,
  tertiary: tertiaryColor,
  onTertiary: onSurfaceTextColor,
  error: Colors.red,
  onError: onSurfaceTextColor,
);

ThemeData mainTheme = ThemeData(
  scaffoldBackgroundColor: lightColorScheme.background,
  textTheme:
      TextTheme(titleLarge: TextStyle(color: lightColorScheme.secondary)),
  appBarTheme: AppBarTheme(
      backgroundColor: lightColorScheme.background,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: lightColorScheme.primary,
          fontSize: 22,
          fontWeight: FontWeight.w500)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lightColorScheme.background,
    elevation: 0,
    selectedItemColor: lightColorScheme.secondary,
    unselectedItemColor: unselectedColor,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: unselectedColor,
    floatingLabelStyle: TextStyle(
        color: lightColorScheme.primary,
        fontSize: 16,
        fontWeight: FontWeight.bold),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(100),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    minimumSize: MaterialStatePropertyAll(Size.fromHeight(54)),
    backgroundColor: MaterialStatePropertyAll(unselectedColor),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
  )),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    minimumSize: MaterialStatePropertyAll(Size(double.infinity, 54)),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(200))),
  )),
  colorScheme: lightColorScheme,
);
