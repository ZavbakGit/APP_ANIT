import 'package:app_anit/features/tasks_page/tasks_page.dart';
import 'package:app_anit/providers/config_state.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/config_data.dart';
import 'package:go_router/go_router.dart';

import '../features/config_page/config_page.dart';
import '../features/home_page/home_page.dart';

/// Caches and Exposes a [GoRouter]
final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true, // For demo purposes
    refreshListenable: router, // This notifiies `GoRouter` for refresh events
    redirect: router._redirectLogic, // All the logic is centralized here
    routes: router._routes, // All the routes can be found there
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<ConfigData?>(
      configProvider, // In our case, we're interested in the log in / log out events.
      (_, __) => notifyListeners(), // Obviously more logic can be added here
    );
  }

  String? _redirectLogic(GoRouterState state) {
    final config = _ref.read(configProvider);

    // From here we can use the state and implement our custom logic
    final stateIsConfig = state.location == '/config';

    if (config == null) {
      // We're not logged in
      // So, IF we aren't in the login page, go there.
      return stateIsConfig ? null : '/config';
    }
    // We're logged in

    // At this point, IF we're in the login page, go to the home page
    //if (stateIsConfig) return '/';

    // There's no need for a redirect at this point.
    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
          name: "home",
          path: '/',
          builder: (context, _) => const HomePage(),
          routes: [
            GoRoute(
              path: 'tasks',
              name: 'tasks',
              builder: (context, _) => const TasksPage(),
            )
          ],
        ),
        GoRoute(
          name: "config",
          path: '/config',
          builder: (context, _) => const ConfigPage(),
        ),
      ];
}
