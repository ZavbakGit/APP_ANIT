import 'package:chopper/chopper.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart'
    as sw;
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

import 'package:dartz/dartz.dart';

import '../../../core/error/exeption.dart';
import '../../../core/error/failures.dart';
import '../../../domain/models/conected_config_model.dart';
import '../../../domain/models/remote_config_model.dart';
import '../../../domain/repositories/repository.dart';
import '../local/local_datasourse.dart';
import '../remote/api_client.dart';

class RepositoryImpl extends Repository {
  sw.Swagger? swagger;
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
          user: response.body!.user!,
        ),
      );
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<sw.TaskItem>>> tasksUserGet(
      String guidUser) async {
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

  @override
  Future<Either<Failure, sw.Task>> getTaskByGuid(String guid) async {
    try {
      final response = await swagger!.taskGuidGet(guid: guid);

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }

      return Right(response.body!);
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, sw.Task>> taskNewGet() async {
    try {
      final response = await swagger!.taskNewGet();

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }

      return Right(response.body!);
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<RefCatalog>>> catalogSearch({
    required String type,
    required String search,
    required int offset,
    required int count,
  }) async {
    try {
      final response = await swagger!.catalogsTypeSearchGet(
        search: search,
        count: count,
        offset: offset,
        type: type,
      );

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }
      return Right(response.body!);
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<sw.RefEnum>>> getEnumElemets({
    required String type,
  }) async {
    try {
      final response = await swagger!.enumNameGet(name: type);

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }
      return Right(response.body!);
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }

  @override
  Future<Either<Failure, None>> saveTask({
    required sw.Task task,
  }) async {
    try {
      final response = await swagger!.taskPost(body: task);

      if (response.errorStatusCode) {
        return Left(response.getFailureResponse());
      }
      return const Right(None());
    } catch (e) {
      return Left(_getCatchFailure(e));
    }
  }
}

Failure _getCatchFailure(Object e) {
  return ServerFailure(error: e.toString());
}

extension ResponseExt on Response {
  bool get errorStatusCode => ![200, 201].contains(statusCode);

  Failure getFailureResponse() {
    return ServerFailure(error: error?.toString());
  }
}
