import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/model/connection_config_model.dart';
import '../../../domain/repositories/connection_repository.dart';

/// Принемает [ConnectionConfigModel] Возвращает [None]
class SaveConfigUsecase implements UseCase<None, ConnectionConfigModel> {
  final ConnectionRepository repository;

  SaveConfigUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, None>> call(ConnectionConfigModel params) async {
    return await repository.saveConnectionData(params);
  }
}
