import 'package:app_anit/core/error/failures.dart';
import 'package:app_anit/domain/repositories/connection_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/usecases/usecase.dart';

class TestConnectionUseCase implements UseCase<None, NoParams> {
  final ConnectionRepository repository;
  TestConnectionUseCase({
    required this.repository,
  });

  @override
  Future<Either<Failure, None>> call(NoParams params) async {
    return (await (await repository.getConnectionConfig())
            .traverseFuture((model) => repository.testConnection(model)))
        .flatMap(id);
  }
}
