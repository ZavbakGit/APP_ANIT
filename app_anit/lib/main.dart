import 'package:app_anit/navigation/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/injection_container.dart' as di;
import 'app/injection_container.dart';
import 'presenter/disign_system/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(const AnitApp());
}

class AnitApp extends StatelessWidget {
  const AnitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = sl<AppRouter>().router;

    // I like this one better

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'flutter_riverpod + go_router Demo',
      theme: themeLight(),
    );
  }
}
