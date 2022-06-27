import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../domain/models/app_model.dart';

class RouterNotifier extends ChangeNotifier {
  final AppModel appModel;

  RouterNotifier(
    this.appModel,
  ) {
    appModel.addListener(() {
      notifyListeners();
    });
  }

  String? redirectLogic(GoRouterState stateRouter) {
    final locationIsLogin = stateRouter.location == '/login';

    if (!appModel.existCurentUser) {
      return locationIsLogin ? null : "/login";
    }

    return null;
  }
}
