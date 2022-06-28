// General failures
abstract class Failure {
  String? error;
  Failure({
    required this.error,
  });
}

class ServerFailure extends Failure {
  ServerFailure({super.error});
}

class CacheFailure extends Failure {
  CacheFailure({super.error});
}
