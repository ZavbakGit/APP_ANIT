import 'package:app_anit/navigation/router_notifire.dart';
import 'package:go_router/go_router.dart';

import '../pages/login/login_page.dart';
import '../pages/tasks_user/tasks_page.dart';

class AppRouter {
  final RouterNotifier routerNotifier;
  AppRouter({
    required this.routerNotifier,
  });

  late final router = GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path, // For demo purposes
    refreshListenable:
        routerNotifier, // This notifiies `GoRouter` for refresh events
    redirect: routerNotifier.redirectLogic, // All the logic is centralized here
    routes: [
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
    ], // All the routes can be found there
  );
}
