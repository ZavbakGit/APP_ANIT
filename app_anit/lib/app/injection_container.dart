import 'package:get_it/get_it.dart';

import '../domain/models/app_model.dart';
import '../pages/login/login_screen_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<AppModel>(
    () => AppModel(),
  );
}
