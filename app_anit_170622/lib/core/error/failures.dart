// General failures
import 'dart:io';

abstract class Failure {}

class ServerFailure extends Failure {
  final String description;
  ServerFailure({
    this.description = 'Ошибка сервера',
  });

  ServerFailure.statusCode(int code) : description = getDescriptionByCode(code);
  //: description = 'Ошибка сервера. Код: $code';

  ServerFailure.description(String description)
      : description = 'Ошибка при обращении к серверу: $description';

  ServerFailure.exeption(Exception e)
      : description = getDescriptionByExeption(e);
}

String getDescriptionByExeption(Exception e) {
  if (e is SocketException) {
    return 'Сервер не отвечает';
  } else {
    return 'Исключительная ситуация';
  }
}

String getDescriptionByCode(int code) {
  switch (code) {
    case 401:
      return 'Ошибка авторизации';
    case 400:
      return 'Ошибка на сервере';
    default:
      return 'Ошибка код: $code';
  }
}

class CacheFailure extends Failure {}
