import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/config_connection/presentetion/config_connection.dart';
import '../features/test_connection/presentation/test_connection_page.dart';

class MyGoRouter {
  // // 1
  // final LoginState loginState;
  // MyRouter(this.loginState);

  // // 2
  late final router = GoRouter(
    debugLogDiagnostics: true,
    redirect: (state) {
      return null;
    },
    //refreshListenable: loginInfo,
    urlPathStrategy: UrlPathStrategy.path,
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      );
    },
    routes: <GoRoute>[
      GoRoute(
        name: 'config_connection',
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ConfigConnectionPage(),
        ),
      ),
      GoRoute(
        name: 'test_connection',
        path: '/test_connection',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const TestConnectionPage(),
        ),
      ),
    ],
  );
}
