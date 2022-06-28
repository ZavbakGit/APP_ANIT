import '../../core/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/conected_config_model.dart';
import '../models/remote_config.dart';

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
}
