import 'package:app_anit/core/failures.dart';
import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:dartz/dartz.dart';

import '../core/exeption.dart';
import '../domain/models/conected_config_model.dart';
import '../domain/repositories/repository.dart';
import 'datasourses/local_datasourse.dart';

class RepositoryImpl extends Repository {
  final LocalDatasourse localDatasourse;

  RepositoryImpl({
    required this.localDatasourse,
  });

  @override
  Future<Either<Failure, ConnectedConfigModel>> getConnectionConfig() async {
    try {
      final connectingData = await localDatasourse.getConnectionData();
      return Right(connectingData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> saveConnectionData(
      ConnectedConfigModel data) async {
    try {
      await localDatasourse.saveConnectingDataModel(data);

      return const Right(None());
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> removeConnectionConfig() async {
    try {
      await localDatasourse.removeConnectionConfig();
      return const Right(None());
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CatalogModel>> login(
      ConnectedConfigModel model) async {
    await Future.delayed(const Duration(seconds: 1)); //ToDO Убрать
    return Right(CatalogModel(
        code: '520', kind: 'Пользователь', name: 'Гладких Александр'));
  }
}
