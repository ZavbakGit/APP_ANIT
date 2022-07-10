import 'package:app_anit/navigation/router_notifire.dart';
import 'package:go_router/go_router.dart';

import '../pages/login/login_page.dart';
import '../pages/search_dialog/search_dialog_page.dart';
import '../pages/task/task_page.dart';
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
      GoRoute(
          name: "task",
          path: "/task/:guid",
          builder: (context, state) {
            final guid = state.params['guid'];
            return TaskPage(guid: guid!);
          },
          routes: [
            GoRoute(
              name: "search_catalog",
              path: "/task/search_catalog/:type",
              builder: (context, state) {
                final type = state.params['type'];
                return SearchCatalogDialogPage(
                  type: type!,
                );
              },
            ),
          ]),
    ], // All the routes can be found there
  );
}
