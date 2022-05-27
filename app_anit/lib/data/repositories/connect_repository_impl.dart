import 'package:app_anit/core/error/failures.dart';
import 'package:app_anit/domain/model/connection_config_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/exeption.dart';
import '../../domain/repositories/connection_repository.dart';
import '../api/api_client.dart';
import '../datasourses/local_datasourse.dart';

class ConnectRepositoryImpl extends ConnectRepository {
  final LocalDatasourse localDatasourse;

  ConnectRepositoryImpl({
    required this.localDatasourse,
  });

  @override
  Future<Either<Failure, ConnectionConfigModel>> getConnectionConfig() async {
    try {
      final connectingData = await localDatasourse.getConnectionData();
      return Right(connectingData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> saveConnectionData(
      ConnectionConfigModel data) async {
    try {
      await localDatasourse.saveConnectingDataModel(data);

      return const Right(None());
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> testConnection(
    ConnectionConfigModel data,
  ) async {
    final client = ApiClient(
      baseUrl: data.baseUrl,
      login: data.login,
      password: data.password,
    );

    try {
      final response = await client.api.pingGet();

      if (response.statusCode == 200) {
        return const Right(None());
      } else {
        return Left(ServerFailure.statusCode(response.statusCode));
      }
    } catch (e) {
      return Left(ServerFailure.exeption(e as Exception));
    }
  }
}
