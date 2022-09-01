// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_widget_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)
        data,
    required TResult Function() empty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksWidgetStateCopyWith<$Res> {
  factory $TasksWidgetStateCopyWith(
          TasksWidgetState value, $Res Function(TasksWidgetState) then) =
      _$TasksWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksWidgetStateCopyWithImpl<$Res>
    implements $TasksWidgetStateCopyWith<$Res> {
  _$TasksWidgetStateCopyWithImpl(this._value, this._then);

  final TasksWidgetState _value;
  // ignore: unused_field
  final $Res Function(TasksWidgetState) _then;
}

/// @nodoc
abstract class _$$TasksWidgetStateDataCopyWith<$Res> {
  factory _$$TasksWidgetStateDataCopyWith(_$TasksWidgetStateData value,
          $Res Function(_$TasksWidgetStateData) then) =
      __$$TasksWidgetStateDataCopyWithImpl<$Res>;
  $Res call({int countTask, int countControlleredTask, int countNeedAccept});
}

/// @nodoc
class __$$TasksWidgetStateDataCopyWithImpl<$Res>
    extends _$TasksWidgetStateCopyWithImpl<$Res>
    implements _$$TasksWidgetStateDataCopyWith<$Res> {
  __$$TasksWidgetStateDataCopyWithImpl(_$TasksWidgetStateData _value,
      $Res Function(_$TasksWidgetStateData) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetStateData));

  @override
  _$TasksWidgetStateData get _value => super._value as _$TasksWidgetStateData;

  @override
  $Res call({
    Object? countTask = freezed,
    Object? countControlleredTask = freezed,
    Object? countNeedAccept = freezed,
  }) {
    return _then(_$TasksWidgetStateData(
      countTask: countTask == freezed
          ? _value.countTask
          : countTask // ignore: cast_nullable_to_non_nullable
              as int,
      countControlleredTask: countControlleredTask == freezed
          ? _value.countControlleredTask
          : countControlleredTask // ignore: cast_nullable_to_non_nullable
              as int,
      countNeedAccept: countNeedAccept == freezed
          ? _value.countNeedAccept
          : countNeedAccept // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TasksWidgetStateData extends TasksWidgetStateData {
  const _$TasksWidgetStateData(
      {required this.countTask,
      required this.countControlleredTask,
      required this.countNeedAccept})
      : super._();

  @override
  final int countTask;
  @override
  final int countControlleredTask;
  @override
  final int countNeedAccept;

  @override
  String toString() {
    return 'TasksWidgetState.data(countTask: $countTask, countControlleredTask: $countControlleredTask, countNeedAccept: $countNeedAccept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksWidgetStateData &&
            const DeepCollectionEquality().equals(other.countTask, countTask) &&
            const DeepCollectionEquality()
                .equals(other.countControlleredTask, countControlleredTask) &&
            const DeepCollectionEquality()
                .equals(other.countNeedAccept, countNeedAccept));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countTask),
      const DeepCollectionEquality().hash(countControlleredTask),
      const DeepCollectionEquality().hash(countNeedAccept));

  @JsonKey(ignore: true)
  @override
  _$$TasksWidgetStateDataCopyWith<_$TasksWidgetStateData> get copyWith =>
      __$$TasksWidgetStateDataCopyWithImpl<_$TasksWidgetStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)
        data,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return data(countTask, countControlleredTask, countNeedAccept);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
  }) {
    return data?.call(countTask, countControlleredTask, countNeedAccept);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(countTask, countControlleredTask, countNeedAccept);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetStateData extends TasksWidgetState {
  const factory TasksWidgetStateData(
      {required final int countTask,
      required final int countControlleredTask,
      required final int countNeedAccept}) = _$TasksWidgetStateData;
  const TasksWidgetStateData._() : super._();

  int get countTask;
  int get countControlleredTask;
  int get countNeedAccept;
  @JsonKey(ignore: true)
  _$$TasksWidgetStateDataCopyWith<_$TasksWidgetStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$TasksWidgetStateCopyWithImpl<$Res>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, (v) => _then(v as _$_Empty));

  @override
  _$_Empty get _value => super._value as _$_Empty;
}

/// @nodoc

class _$_Empty extends _Empty {
  const _$_Empty() : super._();

  @override
  String toString() {
    return 'TasksWidgetState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)
        data,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends TasksWidgetState {
  const factory _Empty() = _$_Empty;
  const _Empty._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$TasksWidgetStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error() : super._();

  @override
  String toString() {
    return 'TasksWidgetState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)
        data,
    required TResult Function() empty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int countTask, int countControlleredTask, int countNeedAccept)?
        data,
    TResult Function()? empty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetStateData value) data,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetStateData value)? data,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends TasksWidgetState {
  const factory _Error() = _$_Error;
  const _Error._() : super._();
}

/// @nodoc
mixin _$TasksWidgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksWidgetEventCopyWith<$Res> {
  factory $TasksWidgetEventCopyWith(
          TasksWidgetEvent value, $Res Function(TasksWidgetEvent) then) =
      _$TasksWidgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksWidgetEventCopyWithImpl<$Res>
    implements $TasksWidgetEventCopyWith<$Res> {
  _$TasksWidgetEventCopyWithImpl(this._value, this._then);

  final TasksWidgetEvent _value;
  // ignore: unused_field
  final $Res Function(TasksWidgetEvent) _then;
}

/// @nodoc
abstract class _$$TasksWidgetInitCopyWith<$Res> {
  factory _$$TasksWidgetInitCopyWith(
          _$TasksWidgetInit value, $Res Function(_$TasksWidgetInit) then) =
      __$$TasksWidgetInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksWidgetInitCopyWithImpl<$Res>
    extends _$TasksWidgetEventCopyWithImpl<$Res>
    implements _$$TasksWidgetInitCopyWith<$Res> {
  __$$TasksWidgetInitCopyWithImpl(
      _$TasksWidgetInit _value, $Res Function(_$TasksWidgetInit) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetInit));

  @override
  _$TasksWidgetInit get _value => super._value as _$TasksWidgetInit;
}

/// @nodoc

class _$TasksWidgetInit implements TasksWidgetInit {
  const _$TasksWidgetInit();

  @override
  String toString() {
    return 'TasksWidgetEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksWidgetInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetInit implements TasksWidgetEvent {
  const factory TasksWidgetInit() = _$TasksWidgetInit;
}

/// @nodoc
abstract class _$$TasksWidgetRefreshCopyWith<$Res> {
  factory _$$TasksWidgetRefreshCopyWith(_$TasksWidgetRefresh value,
          $Res Function(_$TasksWidgetRefresh) then) =
      __$$TasksWidgetRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksWidgetRefreshCopyWithImpl<$Res>
    extends _$TasksWidgetEventCopyWithImpl<$Res>
    implements _$$TasksWidgetRefreshCopyWith<$Res> {
  __$$TasksWidgetRefreshCopyWithImpl(
      _$TasksWidgetRefresh _value, $Res Function(_$TasksWidgetRefresh) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetRefresh));

  @override
  _$TasksWidgetRefresh get _value => super._value as _$TasksWidgetRefresh;
}

/// @nodoc

class _$TasksWidgetRefresh implements TasksWidgetRefresh {
  const _$TasksWidgetRefresh();

  @override
  String toString() {
    return 'TasksWidgetEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksWidgetRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetRefresh implements TasksWidgetEvent {
  const factory TasksWidgetRefresh() = _$TasksWidgetRefresh;
}

/// @nodoc
abstract class _$$TasksWidgetOpenTasksCopyWith<$Res> {
  factory _$$TasksWidgetOpenTasksCopyWith(_$TasksWidgetOpenTasks value,
          $Res Function(_$TasksWidgetOpenTasks) then) =
      __$$TasksWidgetOpenTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksWidgetOpenTasksCopyWithImpl<$Res>
    extends _$TasksWidgetEventCopyWithImpl<$Res>
    implements _$$TasksWidgetOpenTasksCopyWith<$Res> {
  __$$TasksWidgetOpenTasksCopyWithImpl(_$TasksWidgetOpenTasks _value,
      $Res Function(_$TasksWidgetOpenTasks) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetOpenTasks));

  @override
  _$TasksWidgetOpenTasks get _value => super._value as _$TasksWidgetOpenTasks;
}

/// @nodoc

class _$TasksWidgetOpenTasks implements TasksWidgetOpenTasks {
  const _$TasksWidgetOpenTasks();

  @override
  String toString() {
    return 'TasksWidgetEvent.openTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksWidgetOpenTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return openTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return openTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (openTasks != null) {
      return openTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) {
    return openTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) {
    return openTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (openTasks != null) {
      return openTasks(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetOpenTasks implements TasksWidgetEvent {
  const factory TasksWidgetOpenTasks() = _$TasksWidgetOpenTasks;
}

/// @nodoc
abstract class _$$TasksWidgetOpenAddTaskCopyWith<$Res> {
  factory _$$TasksWidgetOpenAddTaskCopyWith(_$TasksWidgetOpenAddTask value,
          $Res Function(_$TasksWidgetOpenAddTask) then) =
      __$$TasksWidgetOpenAddTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksWidgetOpenAddTaskCopyWithImpl<$Res>
    extends _$TasksWidgetEventCopyWithImpl<$Res>
    implements _$$TasksWidgetOpenAddTaskCopyWith<$Res> {
  __$$TasksWidgetOpenAddTaskCopyWithImpl(_$TasksWidgetOpenAddTask _value,
      $Res Function(_$TasksWidgetOpenAddTask) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetOpenAddTask));

  @override
  _$TasksWidgetOpenAddTask get _value =>
      super._value as _$TasksWidgetOpenAddTask;
}

/// @nodoc

class _$TasksWidgetOpenAddTask implements TasksWidgetOpenAddTask {
  const _$TasksWidgetOpenAddTask();

  @override
  String toString() {
    return 'TasksWidgetEvent.addTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksWidgetOpenAddTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return addTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return addTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetOpenAddTask implements TasksWidgetEvent {
  const factory TasksWidgetOpenAddTask() = _$TasksWidgetOpenAddTask;
}

/// @nodoc
abstract class _$$TasksWidgetOpenAddTaskControllerCopyWith<$Res> {
  factory _$$TasksWidgetOpenAddTaskControllerCopyWith(
          _$TasksWidgetOpenAddTaskController value,
          $Res Function(_$TasksWidgetOpenAddTaskController) then) =
      __$$TasksWidgetOpenAddTaskControllerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksWidgetOpenAddTaskControllerCopyWithImpl<$Res>
    extends _$TasksWidgetEventCopyWithImpl<$Res>
    implements _$$TasksWidgetOpenAddTaskControllerCopyWith<$Res> {
  __$$TasksWidgetOpenAddTaskControllerCopyWithImpl(
      _$TasksWidgetOpenAddTaskController _value,
      $Res Function(_$TasksWidgetOpenAddTaskController) _then)
      : super(_value, (v) => _then(v as _$TasksWidgetOpenAddTaskController));

  @override
  _$TasksWidgetOpenAddTaskController get _value =>
      super._value as _$TasksWidgetOpenAddTaskController;
}

/// @nodoc

class _$TasksWidgetOpenAddTaskController
    implements TasksWidgetOpenAddTaskController {
  const _$TasksWidgetOpenAddTaskController();

  @override
  String toString() {
    return 'TasksWidgetEvent.addTaskController()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksWidgetOpenAddTaskController);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return addTaskController();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return addTaskController?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (addTaskController != null) {
      return addTaskController();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksWidgetInit value) init,
    required TResult Function(TasksWidgetRefresh value) refresh,
    required TResult Function(TasksWidgetOpenTasks value) openTasks,
    required TResult Function(TasksWidgetOpenAddTask value) addTask,
    required TResult Function(TasksWidgetOpenAddTaskController value)
        addTaskController,
  }) {
    return addTaskController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
  }) {
    return addTaskController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksWidgetInit value)? init,
    TResult Function(TasksWidgetRefresh value)? refresh,
    TResult Function(TasksWidgetOpenTasks value)? openTasks,
    TResult Function(TasksWidgetOpenAddTask value)? addTask,
    TResult Function(TasksWidgetOpenAddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (addTaskController != null) {
      return addTaskController(this);
    }
    return orElse();
  }
}

abstract class TasksWidgetOpenAddTaskController implements TasksWidgetEvent {
  const factory TasksWidgetOpenAddTaskController() =
      _$TasksWidgetOpenAddTaskController;
}

/// @nodoc
mixin _$TasksWidgetSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTasks value) openTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_AddTaskController value) addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksWidgetSRCopyWith<$Res> {
  factory $TasksWidgetSRCopyWith(
          TasksWidgetSR value, $Res Function(TasksWidgetSR) then) =
      _$TasksWidgetSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksWidgetSRCopyWithImpl<$Res>
    implements $TasksWidgetSRCopyWith<$Res> {
  _$TasksWidgetSRCopyWithImpl(this._value, this._then);

  final TasksWidgetSR _value;
  // ignore: unused_field
  final $Res Function(TasksWidgetSR) _then;
}

/// @nodoc
abstract class _$$_OpenTasksCopyWith<$Res> {
  factory _$$_OpenTasksCopyWith(
          _$_OpenTasks value, $Res Function(_$_OpenTasks) then) =
      __$$_OpenTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenTasksCopyWithImpl<$Res> extends _$TasksWidgetSRCopyWithImpl<$Res>
    implements _$$_OpenTasksCopyWith<$Res> {
  __$$_OpenTasksCopyWithImpl(
      _$_OpenTasks _value, $Res Function(_$_OpenTasks) _then)
      : super(_value, (v) => _then(v as _$_OpenTasks));

  @override
  _$_OpenTasks get _value => super._value as _$_OpenTasks;
}

/// @nodoc

class _$_OpenTasks implements _OpenTasks {
  const _$_OpenTasks();

  @override
  String toString() {
    return 'TasksWidgetSR.openTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return openTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return openTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (openTasks != null) {
      return openTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTasks value) openTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_AddTaskController value) addTaskController,
  }) {
    return openTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
  }) {
    return openTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (openTasks != null) {
      return openTasks(this);
    }
    return orElse();
  }
}

abstract class _OpenTasks implements TasksWidgetSR {
  const factory _OpenTasks() = _$_OpenTasks;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res> extends _$TasksWidgetSRCopyWithImpl<$Res>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, (v) => _then(v as _$_AddTask));

  @override
  _$_AddTask get _value => super._value as _$_AddTask;
}

/// @nodoc

class _$_AddTask implements _AddTask {
  const _$_AddTask();

  @override
  String toString() {
    return 'TasksWidgetSR.addTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return addTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return addTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTasks value) openTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_AddTaskController value) addTaskController,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TasksWidgetSR {
  const factory _AddTask() = _$_AddTask;
}

/// @nodoc
abstract class _$$_AddTaskControllerCopyWith<$Res> {
  factory _$$_AddTaskControllerCopyWith(_$_AddTaskController value,
          $Res Function(_$_AddTaskController) then) =
      __$$_AddTaskControllerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddTaskControllerCopyWithImpl<$Res>
    extends _$TasksWidgetSRCopyWithImpl<$Res>
    implements _$$_AddTaskControllerCopyWith<$Res> {
  __$$_AddTaskControllerCopyWithImpl(
      _$_AddTaskController _value, $Res Function(_$_AddTaskController) _then)
      : super(_value, (v) => _then(v as _$_AddTaskController));

  @override
  _$_AddTaskController get _value => super._value as _$_AddTaskController;
}

/// @nodoc

class _$_AddTaskController implements _AddTaskController {
  const _$_AddTaskController();

  @override
  String toString() {
    return 'TasksWidgetSR.addTaskController()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddTaskController);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openTasks,
    required TResult Function() addTask,
    required TResult Function() addTaskController,
  }) {
    return addTaskController();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
  }) {
    return addTaskController?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openTasks,
    TResult Function()? addTask,
    TResult Function()? addTaskController,
    required TResult orElse(),
  }) {
    if (addTaskController != null) {
      return addTaskController();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenTasks value) openTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_AddTaskController value) addTaskController,
  }) {
    return addTaskController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
  }) {
    return addTaskController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenTasks value)? openTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_AddTaskController value)? addTaskController,
    required TResult orElse(),
  }) {
    if (addTaskController != null) {
      return addTaskController(this);
    }
    return orElse();
  }
}

abstract class _AddTaskController implements TasksWidgetSR {
  const factory _AddTaskController() = _$_AddTaskController;
}
