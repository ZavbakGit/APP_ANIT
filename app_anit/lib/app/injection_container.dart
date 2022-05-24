import 'package:app_anit/data/repositories/connection_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/datasourses/local_datasourse.dart';
import '../domain/repositories/connection_repository.dart';
import '../features/config_connection/bloc/config_connection_bloc.dart';
import '../features/config_connection/usecases/get_config_usecase.dart';
import '../features/config_connection/usecases/save_config_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Config connection Features

  sl.registerFactory(
    () => ConfigConnectionCubit(
      getConfigUsecase: sl(),
      saveConfigUsecase: sl(),
    ),
  );

  sl.registerFactory(() => GetConfigUsecase(repository: sl()));
  sl.registerFactory(() => SaveConfigUsecase(repository: sl()));

  //! Repository
  sl.registerLazySingleton<ConnectionRepository>(
    () => ConnectionRepositoryImpl(localDatasourse: sl()),
  );

  //! Data sources
  sl.registerLazySingleton<LocalDatasourse>(() => LocalDatasourse(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
