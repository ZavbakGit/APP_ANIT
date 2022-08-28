import 'package:flutter/material.dart';

ThemeData themeLight() => ThemeData(
      useMaterial3: true,
      primaryColor: Color(0xFF4259A9),
      backgroundColor: Colors.white,
      canvasColor: const Color(0xffF2F2F2),
      scaffoldBackgroundColor: const Color(0xfff0f0f0),
      colorScheme: const ColorScheme(
        primary: Color(0xFF4259A9),
        background: Color(0xffF2F2F2),
        onBackground: Colors.black,
        error: Colors.red,
        onPrimary: Colors.white,
        onError: Colors.white,
        surface: Colors.white, //Color(0xffF2F2F2),
        brightness: Brightness.light,
        onSurface: Colors.black,
        onSecondary: Colors.white,
        secondary: Color(0xFFBA1A1A),
        //Colors.white,
      ),
      tabBarTheme: const TabBarTheme(labelColor: Colors.black),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffF2F2F2),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
    );

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF4259A9),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDCE1FF),
  onPrimaryContainer: Color(0xFF00154F),
  secondary: Color(0xFF595D72),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDEE1F9),
  onSecondaryContainer: Color(0xFF161B2C),
  tertiary: Color(0xFFA03D48),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDADA),
  onTertiaryContainer: Color(0xFF40000D),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFEFBFF),
  onBackground: Color(0xFF1B1B1F),
  surface: Color(0xFFFEFBFF),
  onSurface: Color(0xFF1B1B1F),
  surfaceVariant: Color(0xFFE2E1EC),
  onSurfaceVariant: Color(0xFF45464F),
  outline: Color(0xFF767680),
  onInverseSurface: Color(0xFFF2F0F4),
  inverseSurface: Color(0xFF303034),
  inversePrimary: Color(0xFFB6C4FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4259A9),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB6C4FF),
  onPrimary: Color(0xFF092978),
  primaryContainer: Color(0xFF284190),
  onPrimaryContainer: Color(0xFFDCE1FF),
  secondary: Color(0xFFC2C5DD),
  onSecondary: Color(0xFF2B3042),
  secondaryContainer: Color(0xFF424659),
  onSecondaryContainer: Color(0xFFDEE1F9),
  tertiary: Color(0xFFFFB2B6),
  onTertiary: Color(0xFF620D1D),
  tertiaryContainer: Color(0xFF812532),
  onTertiaryContainer: Color(0xFFFFDADA),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1B1B1F),
  onBackground: Color(0xFFE4E1E6),
  surface: Color(0xFF1B1B1F),
  onSurface: Color(0xFFE4E1E6),
  surfaceVariant: Color(0xFF45464F),
  onSurfaceVariant: Color(0xFFC6C5D0),
  outline: Color(0xFF90909A),
  onInverseSurface: Color(0xFF1B1B1F),
  inverseSurface: Color(0xFFE4E1E6),
  inversePrimary: Color(0xFF4259A9),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB6C4FF),
);

// ThemeData themeLight() => ThemeData(
//       useMaterial3: true,
//       colorScheme: ColorScheme.fromSeed(
//         brightness: Brightness.light,
//         seedColor: blue,
//       ),
//     );

//const blue = Color.fromARGB(0, 112, 140, 240);
const blue = Color.fromARGB(0, 26, 44, 109);
const red = Color.fromARGB(0, 210, 1, 7);
