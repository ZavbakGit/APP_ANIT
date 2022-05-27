import 'package:app_anit/navigation/my_router_test.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../navigation/my_router.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.5),
    100: tintColor(color, 0.4),
    200: tintColor(color, 0.3),
    300: tintColor(color, 0.2),
    400: tintColor(color, 0.1),
    500: tintColor(color, 0),
    600: tintColor(color, -0.1),
    700: tintColor(color, -0.2),
    800: tintColor(color, -0.3),
    900: tintColor(color, -0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

final ThemeData theme = ThemeData(
  primarySwatch: generateMaterialColor(const Color.fromARGB(255, 4, 32, 245)),
);

class Palette {
  static const Color primary = Color(0xFF2F4D7D);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final router = MyGoRouter().router;
    final router = MyGoRouterTest().router;

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Anit APP',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: theme,
    );
  }
}
