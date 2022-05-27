import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../model/connection_config_model.dart';

abstract class ConnectRepository {
  /// Получаем сохраненные данные о подключении
  ///
  Future<Either<Failure, ConnectionConfigModel>> getConnectionConfig();

  /// Сохраняем данные
  ///
  Future<Either<Failure, None>> saveConnectionData(ConnectionConfigModel data);

  /// Тестируем соеденение
  ///
  Future<Either<Failure, None>> testConnection(ConnectionConfigModel data);
}
