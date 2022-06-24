import 'package:app_anit/core/failures.dart';
import 'package:dartz/dartz.dart';

import '../domain/models/conected_config_model.dart';

abstract class Repository {
  /// Получаем сохраненные данные о подключении
  ///
  Future<Either<Failure, ConnectedConfigModel>> getConnectionConfig();

  /// Сохраняем данные
  ///
  Future<Either<Failure, None>> saveConnectionData(ConnectedConfigModel data);
}
