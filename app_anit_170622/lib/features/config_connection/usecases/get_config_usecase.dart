import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/model/connection_config_model.dart';
import '../../../domain/repositories/connection_repository.dart';

class GetConfigUsecase implements UseCase<ConnectionConfigModel, NoParams> {
  final ConnectRepository repository;

  GetConfigUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, ConnectionConfigModel>> call(NoParams params) async {
    return repository.getConnectionConfig();
  }
}
