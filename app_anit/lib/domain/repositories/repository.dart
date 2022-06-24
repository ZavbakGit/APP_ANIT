import '../../core/failures.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository_impl.dart';
import '../models/conected_config_model.dart';

class RepositoryImpl extends Repository {
  @override
  Future<Either<Failure, ConnectedConfigModel>> getConnectionConfig() async {
    await Future.delayed(const Duration(seconds: 1));
    return Left(CacheFailure());
  }

  @override
  Future<Either<Failure, None>> saveConnectionData(
      ConnectedConfigModel data) async {
    await Future.delayed(const Duration(seconds: 1));
    return Left(CacheFailure());
  }
}
