import 'package:app_anit/navigation/router_notifire.dart';
import 'package:app_anit/presenter/pages/main/main_page.dart';
import 'package:go_router/go_router.dart';

import '../presenter/pages/design_system/test_design_system_page.dart';
import '../presenter/pages/login/login_page.dart';
import '../presenter/pages/task/task_page.dart';
import '../presenter/pages/tasks_user/tasks_user_page.dart';
import '../presenter/test_silver_app_bar/test_silver_app_bar.dart';

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
        builder: (context, _) => const MainPage(),
      ),
      GoRoute(
        name: "tasks",
        path: "/tasks",
        builder: (context, _) => const TasksUserPage(),
      ),
      GoRoute(
        name: "design_systen",
        path: "/design_system",
        builder: (context, _) => const TestDesignSystemPage(),
      ),
      GoRoute(
        name: "test_silver_app_bar",
        path: "/test_silver_app_bar",
        builder: (context, _) => TasksUserPage(),
      ),
      GoRoute(
        name: "login",
        path: "/login",
        builder: (context, _) => const LoginPage(),
      ),
      GoRoute(
        name: "task",
        path: "/task/:guid",
        builder: (context, state) {
          final guid = state.params['guid'];
          return TaskPage(guid: guid!);
        },
      ),
    ], // All the routes can be found there
  );
}
