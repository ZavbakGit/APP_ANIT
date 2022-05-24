import 'package:app_anit/app/my_app.dart';
import 'package:flutter/material.dart';
import 'app/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}
