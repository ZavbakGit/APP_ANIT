import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/config_connection/presentetion/config_connection_page.dart';
import '../features/test_connection/presentation/test_connection_page.dart';
import '../features/test_features/test_page.dart';

class MyGoRouterTest {
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
          name: 'test_page',
          path: '/',
          pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const TestPage(),
              ),
          routes: [
            GoRoute(
              name: 'config_connection_test',
              path: 'config_connection_test',
              pageBuilder: (context, state) => MaterialPage(
                key: state.pageKey,
                child: const ConfigConnectionPage(),
              ),
            ),
            GoRoute(
                name: 'test_connection',
                path: 'test_connection',
                pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const TestConnectionPage(),
                    ),
                routes: [
                  GoRoute(
                    name: 'config_connection',
                    path: 'config_connection',
                    pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const ConfigConnectionPage(),
                    ),
                  ),
                ]),
          ]),
    ],
  );
}
