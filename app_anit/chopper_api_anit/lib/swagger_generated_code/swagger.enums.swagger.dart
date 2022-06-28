import 'package:json_annotation/json_annotation.dart';

enum TaskItemCondition {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('appointed')
  appointed,
  @JsonValue('received')
  received,
  @JsonValue('progress')
  progress,
  @JsonValue('postponed')
  postponed,
  @JsonValue('completed')
  completed,
  @JsonValue('resumed')
  resumed
}

const $TaskItemConditionMap = {
  TaskItemCondition.appointed: 'appointed',
  TaskItemCondition.received: 'received',
  TaskItemCondition.progress: 'progress',
  TaskItemCondition.postponed: 'postponed',
  TaskItemCondition.completed: 'completed',
  TaskItemCondition.resumed: 'resumed'
};

enum TaskItemImportance {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('base')
  base,
  @JsonValue('low')
  low,
  @JsonValue('high')
  high
}

const $TaskItemImportanceMap = {
  TaskItemImportance.base: 'base',
  TaskItemImportance.low: 'low',
  TaskItemImportance.high: 'high'
};
