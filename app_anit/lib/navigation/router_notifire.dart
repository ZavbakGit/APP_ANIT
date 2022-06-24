import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../domain/models/app_model.dart';
import '../pages/connected_config/connected_config_page.dart';
import '../pages/tasks/tasks_page.dart';

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
    _ref.listen<AppModel>(
      appStateProvider, // In our case, we're interested in the log in / log out events.
      (_, __) {
        notifyListeners();
      }, // Obviously more logic can be added here
    );
  }

  String? _redirectLogic(GoRouterState stateRouter) {
    final appModel = _ref.read(appStateProvider);

    final stateIsConfig = stateRouter.location == '/connected_config';

    if (!appModel.existCurentUser) {
      return stateIsConfig ? null : "/connected_config";
    }

    // There's no need for a redirect at this point.
    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
          name: "tasks",
          path: "/",
          builder: (context, _) => const TasksPage(),
        ),
        GoRoute(
          name: "connected_config",
          path: "/connected_config",
          builder: (context, _) => const ConnectedConfigPage(),
        ),
      ];
}
