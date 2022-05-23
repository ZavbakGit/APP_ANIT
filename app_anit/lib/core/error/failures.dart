abstract class Failure {
  final int? code;

  final String? specification;
  const Failure({
    this.code,
    this.specification,
  });
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({super.code, super.specification});
}

class CacheFailure extends Failure {
  const CacheFailure({super.code, super.specification});
}
