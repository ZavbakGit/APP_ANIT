import 'package:flutter/material.dart';

import '../navigation/my_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = MyGoRouter().router;

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Anit APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
