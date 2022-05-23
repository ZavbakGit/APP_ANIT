import 'package:app_anit/core/error/failures.dart';
import 'package:app_anit/domain/model/connection_config_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/exeption.dart';
import '../../domain/repositories/connection_repository.dart';
import '../datasourses/local_datasourse.dart';

class ConnectionRepositoryImpl extends ConnectionRepository {
  final LocalDatasourse localDatasourse;

  ConnectionRepositoryImpl({
    required this.localDatasourse,
  });

  @override
  Future<Either<Failure, ConnectionConfigModel>> getConnectionConfig() async {
    try {
      final connectingData = await localDatasourse.getConnectionData();
      return Right(connectingData);
    } on CacheException {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> saveConnectionData(
      ConnectionConfigModel data) async {
    try {
      await localDatasourse.saveConnectingDataModel(data);

      return const Right(None());
    } on CacheException {
      return const Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, None>> testConnection(ConnectionConfigModel data) {
    // TODO: implement testConnection
    throw UnimplementedError();
  }
}
