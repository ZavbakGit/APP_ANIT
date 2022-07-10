import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

extension TaskConditionUtils on TaskCondition {
  String get description {
    switch (this) {
      case TaskCondition.appointed:
        return 'Назначено';
      case TaskCondition.received:
        return 'Принято';
      case TaskCondition.progress:
        return 'Выполняется';
      case TaskCondition.postponed:
        return 'Отложено';
      case TaskCondition.completed:
        return 'Завершено';
      case TaskCondition.reopened:
        return 'Возобновлено';
      case TaskCondition.swaggerGeneratedUnknown:
        return name.toString();
    }
  }
}

extension TaskImportanceUtils on TaskImportance {
  String get description {
    switch (this) {
      case TaskImportance.high:
        return 'Высокая';
      case TaskImportance.normal:
        return 'Обычная';
      case TaskImportance.low:
        return 'Низкая';
      case TaskImportance.swaggerGeneratedUnknown:
        return name.toString();
    }
  }
}
