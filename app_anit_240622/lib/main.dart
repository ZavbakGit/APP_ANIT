import 'package:app_anit/navigation/router_notifire.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AnitApp()));
}

class AnitApp extends ConsumerWidget {
  const AnitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Comment out the implementation you're not using
    final router = ref.watch(routerProvider); // I like this one better
    // final router = ref.watch(router2Provider);
    // final router = ref.watch(router3Provider);

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'flutter_riverpod + go_router Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
