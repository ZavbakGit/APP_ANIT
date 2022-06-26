import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/datasourses/local_datasourse.dart';
import '../data/repository_impl.dart';
import '../domain/models/app_model.dart';
import '../domain/repositories/repository.dart';
import '../pages/login/login_screen_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<AppModel>(() => AppModel());

  //! Repository
  sl.registerLazySingleton<Repository>(
    () => RepositoryImpl(localDatasourse: sl()),
  );

  //! Data sources
  sl.registerLazySingleton<LocalDatasourse>(() => LocalDatasourse(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
