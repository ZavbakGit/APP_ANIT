import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/datasourses/local/local_datasourse.dart';
import '../data/datasourses/repositories/repository_impl.dart';
import '../domain/models/app_model.dart';
import '../domain/repositories/repository.dart';
import '../navigation/app_router.dart';
import '../navigation/router_notifire.dart';
import '../pages/tasks_user/tasks_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => TasksCubit(appModel: sl(), repository: sl()),
  );

  sl.registerLazySingleton<AppRouter>(() => AppRouter(routerNotifier: sl()));
  sl.registerLazySingleton<RouterNotifier>(() => RouterNotifier(sl()));
  sl.registerLazySingleton<AppModel>(() => AppModel(repository: sl()));

  //! Repository
  sl.registerLazySingleton<Repository>(
      () => RepositoryImpl(localDatasourse: sl()));

  //! Data sources
  sl.registerLazySingleton<LocalDatasourse>(() => LocalDatasourse(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
