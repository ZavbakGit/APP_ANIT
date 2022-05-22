import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int code;

  final String specification;
  const Failure({
    required this.code,
    required this.specification,
  });

  @override
  List<Object> get props => [code, specification];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({required super.code, required super.specification});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.code, required super.specification});
}
