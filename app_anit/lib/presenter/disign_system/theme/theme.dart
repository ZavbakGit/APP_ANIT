import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: blue,
      ),
    );

//const blue = Color.fromARGB(0, 112, 140, 240);
const blue = Color.fromARGB(0, 26, 44, 109);
const red = Color.fromARGB(0, 210, 1, 7);
