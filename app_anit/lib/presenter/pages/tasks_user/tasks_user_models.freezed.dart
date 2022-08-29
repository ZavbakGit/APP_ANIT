// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String title,
            List<TaskItem> tasks, List<TaskItem> controlledTasks)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StData value) data,
    required TResult Function(_StEmpty value) empty,
    required TResult Function(_StError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksUserStateCopyWith<$Res> {
  factory $TasksUserStateCopyWith(
          TasksUserState value, $Res Function(TasksUserState) then) =
      _$TasksUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksUserStateCopyWithImpl<$Res>
    implements $TasksUserStateCopyWith<$Res> {
  _$TasksUserStateCopyWithImpl(this._value, this._then);

  final TasksUserState _value;
  // ignore: unused_field
  final $Res Function(TasksUserState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String title,
      List<TaskItem> tasks,
      List<TaskItem> controlledTasks});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res> extends _$TasksUserStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? title = freezed,
    Object? tasks = freezed,
    Object? controlledTasks = freezed,
  }) {
    return _then(_$_StData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItem>,
      controlledTasks: controlledTasks == freezed
          ? _value._controlledTasks
          : controlledTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItem>,
    ));
  }
}

/// @nodoc

class _$_StData implements _StData {
  const _$_StData(
      {required this.isLoading,
      required this.title,
      required final List<TaskItem> tasks,
      required final List<TaskItem> controlledTasks})
      : _tasks = tasks,
        _controlledTasks = controlledTasks;

  @override
  final bool isLoading;
  @override
  final String title;
  final List<TaskItem> _tasks;
  @override
  List<TaskItem> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<TaskItem> _controlledTasks;
  @override
  List<TaskItem> get controlledTasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controlledTasks);
  }

  @override
  String toString() {
    return 'TasksUserState.data(isLoading: $isLoading, title: $title, tasks: $tasks, controlledTasks: $controlledTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._controlledTasks, _controlledTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_controlledTasks));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String title,
            List<TaskItem> tasks, List<TaskItem> controlledTasks)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(isLoading, title, tasks, controlledTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(isLoading, title, tasks, controlledTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, title, tasks, controlledTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StData value) data,
    required TResult Function(_StEmpty value) empty,
    required TResult Function(_StError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _StData implements TasksUserState {
  const factory _StData(
      {required final bool isLoading,
      required final String title,
      required final List<TaskItem> tasks,
      required final List<TaskItem> controlledTasks}) = _$_StData;

  bool get isLoading;
  String get title;
  List<TaskItem> get tasks;
  List<TaskItem> get controlledTasks;
  @JsonKey(ignore: true)
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StEmptyCopyWith<$Res> {
  factory _$$_StEmptyCopyWith(
          _$_StEmpty value, $Res Function(_$_StEmpty) then) =
      __$$_StEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StEmptyCopyWithImpl<$Res> extends _$TasksUserStateCopyWithImpl<$Res>
    implements _$$_StEmptyCopyWith<$Res> {
  __$$_StEmptyCopyWithImpl(_$_StEmpty _value, $Res Function(_$_StEmpty) _then)
      : super(_value, (v) => _then(v as _$_StEmpty));

  @override
  _$_StEmpty get _value => super._value as _$_StEmpty;
}

/// @nodoc

class _$_StEmpty implements _StEmpty {
  const _$_StEmpty();

  @override
  String toString() {
    return 'TasksUserState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String title,
            List<TaskItem> tasks, List<TaskItem> controlledTasks)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
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
    required TResult Function(_StData value) data,
    required TResult Function(_StEmpty value) empty,
    required TResult Function(_StError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _StEmpty implements TasksUserState {
  const factory _StEmpty() = _$_StEmpty;
}

/// @nodoc
abstract class _$$_StErrorCopyWith<$Res> {
  factory _$$_StErrorCopyWith(
          _$_StError value, $Res Function(_$_StError) then) =
      __$$_StErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_StErrorCopyWithImpl<$Res> extends _$TasksUserStateCopyWithImpl<$Res>
    implements _$$_StErrorCopyWith<$Res> {
  __$$_StErrorCopyWithImpl(_$_StError _value, $Res Function(_$_StError) _then)
      : super(_value, (v) => _then(v as _$_StError));

  @override
  _$_StError get _value => super._value as _$_StError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_StError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StError implements _StError {
  const _$_StError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TasksUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      __$$_StErrorCopyWithImpl<_$_StError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String title,
            List<TaskItem> tasks, List<TaskItem> controlledTasks)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String title, List<TaskItem> tasks,
            List<TaskItem> controlledTasks)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StData value) data,
    required TResult Function(_StEmpty value) empty,
    required TResult Function(_StError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StData value)? data,
    TResult Function(_StEmpty value)? empty,
    TResult Function(_StError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StError implements TasksUserState {
  const factory _StError(final String message) = _$_StError;

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvRefresh value) refresh,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksUserEventCopyWith<$Res> {
  factory $TasksUserEventCopyWith(
          TasksUserEvent value, $Res Function(TasksUserEvent) then) =
      _$TasksUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksUserEventCopyWithImpl<$Res>
    implements $TasksUserEventCopyWith<$Res> {
  _$TasksUserEventCopyWithImpl(this._value, this._then);

  final TasksUserEvent _value;
  // ignore: unused_field
  final $Res Function(TasksUserEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res> extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvInitCopyWith<$Res> {
  __$$EvInitCopyWithImpl(_$EvInit _value, $Res Function(_$EvInit) _then)
      : super(_value, (v) => _then(v as _$EvInit));

  @override
  _$EvInit get _value => super._value as _$EvInit;
}

/// @nodoc

class _$EvInit implements EvInit {
  const _$EvInit();

  @override
  String toString() {
    return 'TasksUserEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvRefresh value) refresh,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements TasksUserEvent {
  const factory EvInit() = _$EvInit;
}

/// @nodoc
abstract class _$$EvRefreshCopyWith<$Res> {
  factory _$$EvRefreshCopyWith(
          _$EvRefresh value, $Res Function(_$EvRefresh) then) =
      __$$EvRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvRefreshCopyWithImpl<$Res> extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvRefreshCopyWith<$Res> {
  __$$EvRefreshCopyWithImpl(
      _$EvRefresh _value, $Res Function(_$EvRefresh) _then)
      : super(_value, (v) => _then(v as _$EvRefresh));

  @override
  _$EvRefresh get _value => super._value as _$EvRefresh;
}

/// @nodoc

class _$EvRefresh implements EvRefresh {
  const _$EvRefresh();

  @override
  String toString() {
    return 'TasksUserEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvRefresh value) refresh,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class EvRefresh implements TasksUserEvent {
  const factory EvRefresh() = _$EvRefresh;
}

/// @nodoc
abstract class _$$EvOnTapItemCopyWith<$Res> {
  factory _$$EvOnTapItemCopyWith(
          _$EvOnTapItem value, $Res Function(_$EvOnTapItem) then) =
      __$$EvOnTapItemCopyWithImpl<$Res>;
  $Res call({String guid});
}

/// @nodoc
class __$$EvOnTapItemCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnTapItemCopyWith<$Res> {
  __$$EvOnTapItemCopyWithImpl(
      _$EvOnTapItem _value, $Res Function(_$EvOnTapItem) _then)
      : super(_value, (v) => _then(v as _$EvOnTapItem));

  @override
  _$EvOnTapItem get _value => super._value as _$EvOnTapItem;

  @override
  $Res call({
    Object? guid = freezed,
  }) {
    return _then(_$EvOnTapItem(
      guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvOnTapItem implements EvOnTapItem {
  const _$EvOnTapItem(this.guid);

  @override
  final String guid;

  @override
  String toString() {
    return 'TasksUserEvent.onTapItem(guid: $guid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnTapItem &&
            const DeepCollectionEquality().equals(other.guid, guid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guid));

  @JsonKey(ignore: true)
  @override
  _$$EvOnTapItemCopyWith<_$EvOnTapItem> get copyWith =>
      __$$EvOnTapItemCopyWithImpl<_$EvOnTapItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
  }) {
    return onTapItem(guid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
  }) {
    return onTapItem?.call(guid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    required TResult orElse(),
  }) {
    if (onTapItem != null) {
      return onTapItem(guid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvRefresh value) refresh,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
  }) {
    return onTapItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
  }) {
    return onTapItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    required TResult orElse(),
  }) {
    if (onTapItem != null) {
      return onTapItem(this);
    }
    return orElse();
  }
}

abstract class EvOnTapItem implements TasksUserEvent {
  const factory EvOnTapItem(final String guid) = _$EvOnTapItem;

  String get guid;
  @JsonKey(ignore: true)
  _$$EvOnTapItemCopyWith<_$EvOnTapItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvOnTapFabCopyWith<$Res> {
  factory _$$EvOnTapFabCopyWith(
          _$EvOnTapFab value, $Res Function(_$EvOnTapFab) then) =
      __$$EvOnTapFabCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvOnTapFabCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnTapFabCopyWith<$Res> {
  __$$EvOnTapFabCopyWithImpl(
      _$EvOnTapFab _value, $Res Function(_$EvOnTapFab) _then)
      : super(_value, (v) => _then(v as _$EvOnTapFab));

  @override
  _$EvOnTapFab get _value => super._value as _$EvOnTapFab;
}

/// @nodoc

class _$EvOnTapFab implements EvOnTapFab {
  const _$EvOnTapFab();

  @override
  String toString() {
    return 'TasksUserEvent.onTapFab()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvOnTapFab);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
  }) {
    return onTapFab();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
  }) {
    return onTapFab?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    required TResult orElse(),
  }) {
    if (onTapFab != null) {
      return onTapFab();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvRefresh value) refresh,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
  }) {
    return onTapFab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
  }) {
    return onTapFab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvRefresh value)? refresh,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    required TResult orElse(),
  }) {
    if (onTapFab != null) {
      return onTapFab(this);
    }
    return orElse();
  }
}

abstract class EvOnTapFab implements TasksUserEvent {
  const factory EvOnTapFab() = _$EvOnTapFab;
}

/// @nodoc
mixin _$TasksUserSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksUserSRCopyWith<$Res> {
  factory $TasksUserSRCopyWith(
          TasksUserSR value, $Res Function(TasksUserSR) then) =
      _$TasksUserSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksUserSRCopyWithImpl<$Res> implements $TasksUserSRCopyWith<$Res> {
  _$TasksUserSRCopyWithImpl(this._value, this._then);

  final TasksUserSR _value;
  // ignore: unused_field
  final $Res Function(TasksUserSR) _then;
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$TasksUserSRCopyWithImpl<$Res>
    implements _$$_SrExitCopyWith<$Res> {
  __$$_SrExitCopyWithImpl(_$_SrExit _value, $Res Function(_$_SrExit) _then)
      : super(_value, (v) => _then(v as _$_SrExit));

  @override
  _$_SrExit get _value => super._value as _$_SrExit;
}

/// @nodoc

class _$_SrExit implements _SrExit {
  const _$_SrExit();

  @override
  String toString() {
    return 'TasksUserSR.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SrExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _SrExit implements TasksUserSR {
  const factory _SrExit() = _$_SrExit;
}

/// @nodoc
abstract class _$$_SrShowSnackBarCopyWith<$Res> {
  factory _$$_SrShowSnackBarCopyWith(
          _$_SrShowSnackBar value, $Res Function(_$_SrShowSnackBar) then) =
      __$$_SrShowSnackBarCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_SrShowSnackBarCopyWithImpl<$Res>
    extends _$TasksUserSRCopyWithImpl<$Res>
    implements _$$_SrShowSnackBarCopyWith<$Res> {
  __$$_SrShowSnackBarCopyWithImpl(
      _$_SrShowSnackBar _value, $Res Function(_$_SrShowSnackBar) _then)
      : super(_value, (v) => _then(v as _$_SrShowSnackBar));

  @override
  _$_SrShowSnackBar get _value => super._value as _$_SrShowSnackBar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SrShowSnackBar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SrShowSnackBar implements _SrShowSnackBar {
  const _$_SrShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TasksUserSR.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrShowSnackBar &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      __$$_SrShowSnackBarCopyWithImpl<_$_SrShowSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class _SrShowSnackBar implements TasksUserSR {
  const factory _SrShowSnackBar(final String message) = _$_SrShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SrOpenTaskCopyWith<$Res> {
  factory _$$_SrOpenTaskCopyWith(
          _$_SrOpenTask value, $Res Function(_$_SrOpenTask) then) =
      __$$_SrOpenTaskCopyWithImpl<$Res>;
  $Res call({String guid});
}

/// @nodoc
class __$$_SrOpenTaskCopyWithImpl<$Res> extends _$TasksUserSRCopyWithImpl<$Res>
    implements _$$_SrOpenTaskCopyWith<$Res> {
  __$$_SrOpenTaskCopyWithImpl(
      _$_SrOpenTask _value, $Res Function(_$_SrOpenTask) _then)
      : super(_value, (v) => _then(v as _$_SrOpenTask));

  @override
  _$_SrOpenTask get _value => super._value as _$_SrOpenTask;

  @override
  $Res call({
    Object? guid = freezed,
  }) {
    return _then(_$_SrOpenTask(
      guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SrOpenTask implements _SrOpenTask {
  const _$_SrOpenTask(this.guid);

  @override
  final String guid;

  @override
  String toString() {
    return 'TasksUserSR.openTask(guid: $guid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrOpenTask &&
            const DeepCollectionEquality().equals(other.guid, guid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guid));

  @JsonKey(ignore: true)
  @override
  _$$_SrOpenTaskCopyWith<_$_SrOpenTask> get copyWith =>
      __$$_SrOpenTaskCopyWithImpl<_$_SrOpenTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
  }) {
    return openTask(guid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
  }) {
    return openTask?.call(guid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    required TResult orElse(),
  }) {
    if (openTask != null) {
      return openTask(guid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return openTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return openTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (openTask != null) {
      return openTask(this);
    }
    return orElse();
  }
}

abstract class _SrOpenTask implements TasksUserSR {
  const factory _SrOpenTask(final String guid) = _$_SrOpenTask;

  String get guid;
  @JsonKey(ignore: true)
  _$$_SrOpenTaskCopyWith<_$_SrOpenTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SrOpenNewTaskCopyWith<$Res> {
  factory _$$_SrOpenNewTaskCopyWith(
          _$_SrOpenNewTask value, $Res Function(_$_SrOpenNewTask) then) =
      __$$_SrOpenNewTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrOpenNewTaskCopyWithImpl<$Res>
    extends _$TasksUserSRCopyWithImpl<$Res>
    implements _$$_SrOpenNewTaskCopyWith<$Res> {
  __$$_SrOpenNewTaskCopyWithImpl(
      _$_SrOpenNewTask _value, $Res Function(_$_SrOpenNewTask) _then)
      : super(_value, (v) => _then(v as _$_SrOpenNewTask));

  @override
  _$_SrOpenNewTask get _value => super._value as _$_SrOpenNewTask;
}

/// @nodoc

class _$_SrOpenNewTask implements _SrOpenNewTask {
  const _$_SrOpenNewTask();

  @override
  String toString() {
    return 'TasksUserSR.openNewTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SrOpenNewTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
  }) {
    return openNewTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
  }) {
    return openNewTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    required TResult orElse(),
  }) {
    if (openNewTask != null) {
      return openNewTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return openNewTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return openNewTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (openNewTask != null) {
      return openNewTask(this);
    }
    return orElse();
  }
}

abstract class _SrOpenNewTask implements TasksUserSR {
  const factory _SrOpenNewTask() = _$_SrOpenNewTask;
}
