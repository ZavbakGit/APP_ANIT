import 'package:app_anit/core/failures.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper_api_anit/swagger_generated_code/client_index.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:dartz/dartz.dart';

import '../../../core/exeption.dart';
import '../../../domain/models/conected_config_model.dart';
import '../../../domain/models/remote_config_model.dart';
import '../../../domain/repositories/repository.dart';
import '../local/local_datasourse.dart';
import '../remote/api_client.dart';

class RepositoryImpl extends Repository {
  Swagger? swagger;
  final LocalDatasourse localDatasourse;

  RepositoryImpl({
    required this.localDatasourse,
  });

  void _initApiClient(ConnectedConfigModel config) {
    final apiClient = ApiClient(
      baseUrl: config.baseUrl,
      login: config.login,
      password: config.password,
    );

    swagger = apiClient.api;
  }

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
      _initApiClient(data);

      //return Left(CacheFailure());
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
  Future<Either<Failure, RemoteConfigModel>> login(
      ConnectedConfigModel model) async {
    try {
      final response = await swagger!.loginGet();

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }

      return Right(
        RemoteConfigModel(
          guidUser: response.body!.guidUser!,
          nameUser: response.body!.nameUser!,
        ),
      );
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<TaskItem>>> tasksUserGet(String guidUser) async {
    try {
      final response = await swagger!.tasksUserGet(guidUser: guidUser);

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }

      return Right(response.body ?? []);
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }
}

Failure _getCatchFailure(Object e) {
  return ServerFailure(error: e.toString());
}

extension ResponseExt on Response {
  bool get errorStatusCode => statusCode != 200;

  Failure getFailureResponse() {
    return ServerFailure(error: error?.toString());
  }
}
