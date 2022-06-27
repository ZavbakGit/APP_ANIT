import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app/injection_container.dart';
import '../domain/models/app_model.dart';
import '../pages/login/login_page.dart';
import '../pages/tasks/tasks_page.dart';

/// Caches and Exposes a [GoRouter]
final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(sl());

  return GoRouter(
    debugLogDiagnostics: true, // For demo purposes
    refreshListenable: router, // This notifiies `GoRouter` for refresh events
    redirect: router._redirectLogic, // All the logic is centralized here
    routes: router._routes, // All the routes can be found there
  );
});

class RouterNotifier extends ChangeNotifier {
  //final Ref _ref;
  final AppModel appModel;

  RouterNotifier(
    //this._ref,
    this.appModel,
  ) {
    appModel.addListener(() {
      notifyListeners();
    });
  }

  String? _redirectLogic(GoRouterState stateRouter) {
    //final appModel = _ref.read(appStateProvider);

    final locationIsLogin = stateRouter.location == '/login';

    if (!appModel.existCurentUser) {
      return locationIsLogin ? null : "/login";
    }

    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
          name: "home",
          path: "/",
          builder: (context, _) => const TasksPage(),
        ),
        GoRoute(
          name: "login",
          path: "/login",
          builder: (context, _) => const LoginPage(),
        ),
      ];
}
