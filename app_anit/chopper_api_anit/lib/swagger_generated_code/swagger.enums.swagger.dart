import 'package:json_annotation/json_annotation.dart';

enum TaskCondition {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Appointed')
  appointed,
  @JsonValue('Received')
  received,
  @JsonValue('Progress')
  progress,
  @JsonValue('Postponed')
  postponed,
  @JsonValue('Completed')
  completed,
  @JsonValue('Reopened')
  reopened
}

const $TaskConditionMap = {
  TaskCondition.appointed: 'Appointed',
  TaskCondition.received: 'Received',
  TaskCondition.progress: 'Progress',
  TaskCondition.postponed: 'Postponed',
  TaskCondition.completed: 'Completed',
  TaskCondition.reopened: 'Reopened'
};

enum TaskImportance {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('High')
  high,
  @JsonValue('Normal')
  normal,
  @JsonValue('Low')
  low
}

const $TaskImportanceMap = {
  TaskImportance.high: 'High',
  TaskImportance.normal: 'Normal',
  TaskImportance.low: 'Low'
};

enum TaskItemCondition {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Appointed')
  appointed,
  @JsonValue('Received')
  received,
  @JsonValue('Progress')
  progress,
  @JsonValue('Postponed')
  postponed,
  @JsonValue('Completed')
  completed,
  @JsonValue('Reopened')
  reopened
}

const $TaskItemConditionMap = {
  TaskItemCondition.appointed: 'Appointed',
  TaskItemCondition.received: 'Received',
  TaskItemCondition.progress: 'Progress',
  TaskItemCondition.postponed: 'Postponed',
  TaskItemCondition.completed: 'Completed',
  TaskItemCondition.reopened: 'Reopened'
};

enum TaskItemImportance {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('High')
  high,
  @JsonValue('Normal')
  normal,
  @JsonValue('Low')
  low
}

const $TaskItemImportanceMap = {
  TaskItemImportance.high: 'High',
  TaskItemImportance.normal: 'Normal',
  TaskItemImportance.low: 'Low'
};
