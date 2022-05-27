import 'package:app_anit/core/presentation/button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/presentation/page_widget.dart';
import '../features/config_connection/presentetion/config_connection_page.dart';
import '../features/connection/presenter/connect_page.dart';
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
                name: 'connection',
                path: 'connection',
                pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: const ConnectionPage(isStart: true),
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
            GoRoute(
                name: 'main',
                path: 'main',
                pageBuilder: (context, state) => MaterialPage(
                      key: state.pageKey,
                      child: CustomPageWidget(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomPrimaryButton(
                                text: 'Выйти',
                                onPressed: () {
                                  router.goNamed('test_page');
                                },
                              ),
                              CustomPrimaryButton(
                                text: 'Настройки',
                                onPressed: () {
                                  router.goNamed('config_connection_3');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                routes: [
                  GoRoute(
                    name: 'config_connection_3',
                    path: 'config_connection_3',
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
