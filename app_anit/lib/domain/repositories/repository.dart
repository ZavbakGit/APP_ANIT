import 'package:app_anit/domain/models/catalog_model.dart';

import '../../core/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/conected_config_model.dart';

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

  Future<Either<Failure, CatalogModel>> login(ConnectedConfigModel model);
}