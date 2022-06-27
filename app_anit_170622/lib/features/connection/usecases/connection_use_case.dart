import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../../domain/repositories/connection_repository.dart';

class ConnectionUseCase implements UseCase<None, NoParams> {
  final ConnectRepository repository;
  ConnectionUseCase({
    required this.repository,
  });

  @override
  Future<Either<Failure, None>> call(NoParams params) async {
    return (await (await repository.getConnectionConfig()).traverseFuture(
      (model) => repository.testConnection(model),
    ))
        .flatMap(id);
  }
}
