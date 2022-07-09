import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart'
    as sw;
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

import '../../core/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/conected_config_model.dart';
import '../models/remote_config_model.dart';

abstract class Repository {
  /// Получаем сохраненные данные о подключении
  ///
  Future<Either<Failure, ConnectedConfigModel>> getConnectionConfig();

  /// Сохраняем данные
  ///
  Future<Either<Failure, None>> saveConnectionData(ConnectedConfigModel data);

  /// Удаляем данные
  ///
  Future<Either<Failure, None>> removeConnectionConfig();

  Future<Either<Failure, RemoteConfigModel>> login(ConnectedConfigModel model);

  Future<Either<Failure, List<sw.TaskItem>>> tasksUserGet(String guidUser);

  Future<Either<Failure, sw.Task>> getTaskByGuid(String guid);

  Future<Either<Failure, List<RefCatalog>>> catalogSearch({
    required String type,
    required String search,
    required int offset,
    required int count,
  });
}
