import 'package:flutter/material.dart';

// Surfaces
const backgroundColor = Color(0xFFF7F7F7);
const surfaceColor = Color(0xFFFFFBFE);
const shadowColor = Color(0xFF171829);

// Accents
const primaryColor = Color(0xFF6750A4);
const secondaryColor = Color(0xFF46D99D);
const tertiaryColor = Color(0xFFFFCCD0);

const unselectedColor = Color(0xFFCAC4D0);

// Text
const normalTextColor = Color(0x000000);
const fadedTextColor = Color(0xFF787579);
const onSurfaceTextColor = Color(0xFFFFFFFF);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  surface: surfaceColor,
  onSurface: primaryColor,
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
  colorScheme: lightColorScheme,
);