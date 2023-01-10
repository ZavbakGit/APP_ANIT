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
    required TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)
        data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
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
      {bool isCurentUser,
      bool isLoading,
      String title,
      List<TaskItem> tasks,
      List<TaskItem> controlledTasks,
      RefCatalog appUser,
      int curentIndexTab});
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
    Object? isCurentUser = freezed,
    Object? isLoading = freezed,
    Object? title = freezed,
    Object? tasks = freezed,
    Object? controlledTasks = freezed,
    Object? appUser = freezed,
    Object? curentIndexTab = freezed,
  }) {
    return _then(_$_StData(
      isCurentUser: isCurentUser == freezed
          ? _value.isCurentUser
          : isCurentUser // ignore: cast_nullable_to_non_nullable
              as bool,
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
      appUser: appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
      curentIndexTab: curentIndexTab == freezed
          ? _value.curentIndexTab
          : curentIndexTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StData implements _StData {
  const _$_StData(
      {required this.isCurentUser,
      required this.isLoading,
      required this.title,
      required final List<TaskItem> tasks,
      required final List<TaskItem> controlledTasks,
      required this.appUser,
      required this.curentIndexTab})
      : _tasks = tasks,
        _controlledTasks = controlledTasks;

  @override
  final bool isCurentUser;
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
  final RefCatalog appUser;
  @override
  final int curentIndexTab;

  @override
  String toString() {
    return 'TasksUserState.data(isCurentUser: $isCurentUser, isLoading: $isLoading, title: $title, tasks: $tasks, controlledTasks: $controlledTasks, appUser: $appUser, curentIndexTab: $curentIndexTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality()
                .equals(other.isCurentUser, isCurentUser) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._controlledTasks, _controlledTasks) &&
            const DeepCollectionEquality().equals(other.appUser, appUser) &&
            const DeepCollectionEquality()
                .equals(other.curentIndexTab, curentIndexTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isCurentUser),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_controlledTasks),
      const DeepCollectionEquality().hash(appUser),
      const DeepCollectionEquality().hash(curentIndexTab));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)
        data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return data(isCurentUser, isLoading, title, tasks, controlledTasks, appUser,
        curentIndexTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return data?.call(isCurentUser, isLoading, title, tasks, controlledTasks,
        appUser, curentIndexTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isCurentUser, isLoading, title, tasks, controlledTasks,
          appUser, curentIndexTab);
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
      {required final bool isCurentUser,
      required final bool isLoading,
      required final String title,
      required final List<TaskItem> tasks,
      required final List<TaskItem> controlledTasks,
      required final RefCatalog appUser,
      required final int curentIndexTab}) = _$_StData;

  bool get isCurentUser;
  bool get isLoading;
  String get title;
  List<TaskItem> get tasks;
  List<TaskItem> get controlledTasks;
  RefCatalog get appUser;
  int get curentIndexTab;
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
    required TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)
        data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
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
  $Res call({String? message});
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
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StError implements _StError {
  const _$_StError({this.message});

  @override
  final String? message;

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
    required TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)
        data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isCurentUser,
            bool isLoading,
            String title,
            List<TaskItem> tasks,
            List<TaskItem> controlledTasks,
            RefCatalog appUser,
            int curentIndexTab)?
        data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
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
  const factory _StError({final String? message}) = _$_StError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
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
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
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
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
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
abstract class _$$EvReloadCopyWith<$Res> {
  factory _$$EvReloadCopyWith(
          _$EvReload value, $Res Function(_$EvReload) then) =
      __$$EvReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvReloadCopyWithImpl<$Res> extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvReloadCopyWith<$Res> {
  __$$EvReloadCopyWithImpl(_$EvReload _value, $Res Function(_$EvReload) _then)
      : super(_value, (v) => _then(v as _$EvReload));

  @override
  _$EvReload get _value => super._value as _$EvReload;
}

/// @nodoc

class _$EvReload implements EvReload {
  const _$EvReload();

  @override
  String toString() {
    return 'TasksUserEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvReload implements TasksUserEvent {
  const factory EvReload() = _$EvReload;
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
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onTapItem(guid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onTapItem?.call(guid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
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
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onTapItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onTapItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
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
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onTapFab();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onTapFab?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
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
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onTapFab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onTapFab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
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
abstract class _$$EvOnTapFilterCopyWith<$Res> {
  factory _$$EvOnTapFilterCopyWith(
          _$EvOnTapFilter value, $Res Function(_$EvOnTapFilter) then) =
      __$$EvOnTapFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvOnTapFilterCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnTapFilterCopyWith<$Res> {
  __$$EvOnTapFilterCopyWithImpl(
      _$EvOnTapFilter _value, $Res Function(_$EvOnTapFilter) _then)
      : super(_value, (v) => _then(v as _$EvOnTapFilter));

  @override
  _$EvOnTapFilter get _value => super._value as _$EvOnTapFilter;
}

/// @nodoc

class _$EvOnTapFilter implements EvOnTapFilter {
  const _$EvOnTapFilter();

  @override
  String toString() {
    return 'TasksUserEvent.onTapFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvOnTapFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onTapFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onTapFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onTapFilter != null) {
      return onTapFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onTapFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onTapFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onTapFilter != null) {
      return onTapFilter(this);
    }
    return orElse();
  }
}

abstract class EvOnTapFilter implements TasksUserEvent {
  const factory EvOnTapFilter() = _$EvOnTapFilter;
}

/// @nodoc
abstract class _$$EvOnChangeUserCopyWith<$Res> {
  factory _$$EvOnChangeUserCopyWith(
          _$EvOnChangeUser value, $Res Function(_$EvOnChangeUser) then) =
      __$$EvOnChangeUserCopyWithImpl<$Res>;
  $Res call({RefCatalog user});
}

/// @nodoc
class __$$EvOnChangeUserCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnChangeUserCopyWith<$Res> {
  __$$EvOnChangeUserCopyWithImpl(
      _$EvOnChangeUser _value, $Res Function(_$EvOnChangeUser) _then)
      : super(_value, (v) => _then(v as _$EvOnChangeUser));

  @override
  _$EvOnChangeUser get _value => super._value as _$EvOnChangeUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$EvOnChangeUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$EvOnChangeUser implements EvOnChangeUser {
  const _$EvOnChangeUser(this.user);

  @override
  final RefCatalog user;

  @override
  String toString() {
    return 'TasksUserEvent.onChangeUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnChangeUser &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$EvOnChangeUserCopyWith<_$EvOnChangeUser> get copyWith =>
      __$$EvOnChangeUserCopyWithImpl<_$EvOnChangeUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onChangeUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onChangeUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onChangeUser != null) {
      return onChangeUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onChangeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onChangeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onChangeUser != null) {
      return onChangeUser(this);
    }
    return orElse();
  }
}

abstract class EvOnChangeUser implements TasksUserEvent {
  const factory EvOnChangeUser(final RefCatalog user) = _$EvOnChangeUser;

  RefCatalog get user;
  @JsonKey(ignore: true)
  _$$EvOnChangeUserCopyWith<_$EvOnChangeUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvOnTapFilterOffCopyWith<$Res> {
  factory _$$EvOnTapFilterOffCopyWith(
          _$EvOnTapFilterOff value, $Res Function(_$EvOnTapFilterOff) then) =
      __$$EvOnTapFilterOffCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvOnTapFilterOffCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnTapFilterOffCopyWith<$Res> {
  __$$EvOnTapFilterOffCopyWithImpl(
      _$EvOnTapFilterOff _value, $Res Function(_$EvOnTapFilterOff) _then)
      : super(_value, (v) => _then(v as _$EvOnTapFilterOff));

  @override
  _$EvOnTapFilterOff get _value => super._value as _$EvOnTapFilterOff;
}

/// @nodoc

class _$EvOnTapFilterOff implements EvOnTapFilterOff {
  const _$EvOnTapFilterOff();

  @override
  String toString() {
    return 'TasksUserEvent.onTapFilterOff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvOnTapFilterOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onTapFilterOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onTapFilterOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onTapFilterOff != null) {
      return onTapFilterOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onTapFilterOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onTapFilterOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onTapFilterOff != null) {
      return onTapFilterOff(this);
    }
    return orElse();
  }
}

abstract class EvOnTapFilterOff implements TasksUserEvent {
  const factory EvOnTapFilterOff() = _$EvOnTapFilterOff;
}

/// @nodoc
abstract class _$$EvOnAcceptTaskCopyWith<$Res> {
  factory _$$EvOnAcceptTaskCopyWith(
          _$EvOnAcceptTask value, $Res Function(_$EvOnAcceptTask) then) =
      __$$EvOnAcceptTaskCopyWithImpl<$Res>;
  $Res call({String guidTask});
}

/// @nodoc
class __$$EvOnAcceptTaskCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnAcceptTaskCopyWith<$Res> {
  __$$EvOnAcceptTaskCopyWithImpl(
      _$EvOnAcceptTask _value, $Res Function(_$EvOnAcceptTask) _then)
      : super(_value, (v) => _then(v as _$EvOnAcceptTask));

  @override
  _$EvOnAcceptTask get _value => super._value as _$EvOnAcceptTask;

  @override
  $Res call({
    Object? guidTask = freezed,
  }) {
    return _then(_$EvOnAcceptTask(
      guidTask == freezed
          ? _value.guidTask
          : guidTask // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvOnAcceptTask implements EvOnAcceptTask {
  const _$EvOnAcceptTask(this.guidTask);

  @override
  final String guidTask;

  @override
  String toString() {
    return 'TasksUserEvent.onAcceptTask(guidTask: $guidTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnAcceptTask &&
            const DeepCollectionEquality().equals(other.guidTask, guidTask));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guidTask));

  @JsonKey(ignore: true)
  @override
  _$$EvOnAcceptTaskCopyWith<_$EvOnAcceptTask> get copyWith =>
      __$$EvOnAcceptTaskCopyWithImpl<_$EvOnAcceptTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onAcceptTask(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onAcceptTask?.call(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onAcceptTask != null) {
      return onAcceptTask(guidTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onAcceptTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onAcceptTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onAcceptTask != null) {
      return onAcceptTask(this);
    }
    return orElse();
  }
}

abstract class EvOnAcceptTask implements TasksUserEvent {
  const factory EvOnAcceptTask(final String guidTask) = _$EvOnAcceptTask;

  String get guidTask;
  @JsonKey(ignore: true)
  _$$EvOnAcceptTaskCopyWith<_$EvOnAcceptTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvOnSetControlDoneTaskCopyWith<$Res> {
  factory _$$EvOnSetControlDoneTaskCopyWith(_$EvOnSetControlDoneTask value,
          $Res Function(_$EvOnSetControlDoneTask) then) =
      __$$EvOnSetControlDoneTaskCopyWithImpl<$Res>;
  $Res call({String guidTask});
}

/// @nodoc
class __$$EvOnSetControlDoneTaskCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnSetControlDoneTaskCopyWith<$Res> {
  __$$EvOnSetControlDoneTaskCopyWithImpl(_$EvOnSetControlDoneTask _value,
      $Res Function(_$EvOnSetControlDoneTask) _then)
      : super(_value, (v) => _then(v as _$EvOnSetControlDoneTask));

  @override
  _$EvOnSetControlDoneTask get _value =>
      super._value as _$EvOnSetControlDoneTask;

  @override
  $Res call({
    Object? guidTask = freezed,
  }) {
    return _then(_$EvOnSetControlDoneTask(
      guidTask == freezed
          ? _value.guidTask
          : guidTask // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvOnSetControlDoneTask implements EvOnSetControlDoneTask {
  const _$EvOnSetControlDoneTask(this.guidTask);

  @override
  final String guidTask;

  @override
  String toString() {
    return 'TasksUserEvent.onSetControlDoneTask(guidTask: $guidTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnSetControlDoneTask &&
            const DeepCollectionEquality().equals(other.guidTask, guidTask));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guidTask));

  @JsonKey(ignore: true)
  @override
  _$$EvOnSetControlDoneTaskCopyWith<_$EvOnSetControlDoneTask> get copyWith =>
      __$$EvOnSetControlDoneTaskCopyWithImpl<_$EvOnSetControlDoneTask>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onSetControlDoneTask(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onSetControlDoneTask?.call(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onSetControlDoneTask != null) {
      return onSetControlDoneTask(guidTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onSetControlDoneTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onSetControlDoneTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onSetControlDoneTask != null) {
      return onSetControlDoneTask(this);
    }
    return orElse();
  }
}

abstract class EvOnSetControlDoneTask implements TasksUserEvent {
  const factory EvOnSetControlDoneTask(final String guidTask) =
      _$EvOnSetControlDoneTask;

  String get guidTask;
  @JsonKey(ignore: true)
  _$$EvOnSetControlDoneTaskCopyWith<_$EvOnSetControlDoneTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvOnCompleteTaskCopyWith<$Res> {
  factory _$$EvOnCompleteTaskCopyWith(
          _$EvOnCompleteTask value, $Res Function(_$EvOnCompleteTask) then) =
      __$$EvOnCompleteTaskCopyWithImpl<$Res>;
  $Res call({String guidTask});
}

/// @nodoc
class __$$EvOnCompleteTaskCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnCompleteTaskCopyWith<$Res> {
  __$$EvOnCompleteTaskCopyWithImpl(
      _$EvOnCompleteTask _value, $Res Function(_$EvOnCompleteTask) _then)
      : super(_value, (v) => _then(v as _$EvOnCompleteTask));

  @override
  _$EvOnCompleteTask get _value => super._value as _$EvOnCompleteTask;

  @override
  $Res call({
    Object? guidTask = freezed,
  }) {
    return _then(_$EvOnCompleteTask(
      guidTask == freezed
          ? _value.guidTask
          : guidTask // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvOnCompleteTask implements EvOnCompleteTask {
  const _$EvOnCompleteTask(this.guidTask);

  @override
  final String guidTask;

  @override
  String toString() {
    return 'TasksUserEvent.onCompleteTask(guidTask: $guidTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnCompleteTask &&
            const DeepCollectionEquality().equals(other.guidTask, guidTask));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guidTask));

  @JsonKey(ignore: true)
  @override
  _$$EvOnCompleteTaskCopyWith<_$EvOnCompleteTask> get copyWith =>
      __$$EvOnCompleteTaskCopyWithImpl<_$EvOnCompleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onCompleteTask(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onCompleteTask?.call(guidTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onCompleteTask != null) {
      return onCompleteTask(guidTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onCompleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onCompleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onCompleteTask != null) {
      return onCompleteTask(this);
    }
    return orElse();
  }
}

abstract class EvOnCompleteTask implements TasksUserEvent {
  const factory EvOnCompleteTask(final String guidTask) = _$EvOnCompleteTask;

  String get guidTask;
  @JsonKey(ignore: true)
  _$$EvOnCompleteTaskCopyWith<_$EvOnCompleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvOnTapNavBottomBarCopyWith<$Res> {
  factory _$$EvOnTapNavBottomBarCopyWith(_$EvOnTapNavBottomBar value,
          $Res Function(_$EvOnTapNavBottomBar) then) =
      __$$EvOnTapNavBottomBarCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$EvOnTapNavBottomBarCopyWithImpl<$Res>
    extends _$TasksUserEventCopyWithImpl<$Res>
    implements _$$EvOnTapNavBottomBarCopyWith<$Res> {
  __$$EvOnTapNavBottomBarCopyWithImpl(
      _$EvOnTapNavBottomBar _value, $Res Function(_$EvOnTapNavBottomBar) _then)
      : super(_value, (v) => _then(v as _$EvOnTapNavBottomBar));

  @override
  _$EvOnTapNavBottomBar get _value => super._value as _$EvOnTapNavBottomBar;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$EvOnTapNavBottomBar(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EvOnTapNavBottomBar implements EvOnTapNavBottomBar {
  const _$EvOnTapNavBottomBar(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TasksUserEvent.onTapNavBottomBar(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnTapNavBottomBar &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$EvOnTapNavBottomBarCopyWith<_$EvOnTapNavBottomBar> get copyWith =>
      __$$EvOnTapNavBottomBarCopyWithImpl<_$EvOnTapNavBottomBar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return onTapNavBottomBar(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return onTapNavBottomBar?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (onTapNavBottomBar != null) {
      return onTapNavBottomBar(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return onTapNavBottomBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return onTapNavBottomBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (onTapNavBottomBar != null) {
      return onTapNavBottomBar(this);
    }
    return orElse();
  }
}

abstract class EvOnTapNavBottomBar implements TasksUserEvent {
  const factory EvOnTapNavBottomBar(final int index) = _$EvOnTapNavBottomBar;

  int get index;
  @JsonKey(ignore: true)
  _$$EvOnTapNavBottomBarCopyWith<_$EvOnTapNavBottomBar> get copyWith =>
      throw _privateConstructorUsedError;
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
    return 'TasksUserEvent.refrech()';
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
    required TResult Function() reload,
    required TResult Function(String guid) onTapItem,
    required TResult Function() onTapFab,
    required TResult Function() onTapFilter,
    required TResult Function(RefCatalog user) onChangeUser,
    required TResult Function() onTapFilterOff,
    required TResult Function(String guidTask) onAcceptTask,
    required TResult Function(String guidTask) onSetControlDoneTask,
    required TResult Function(String guidTask) onCompleteTask,
    required TResult Function(int index) onTapNavBottomBar,
    required TResult Function() refrech,
  }) {
    return refrech();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
  }) {
    return refrech?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function(String guid)? onTapItem,
    TResult Function()? onTapFab,
    TResult Function()? onTapFilter,
    TResult Function(RefCatalog user)? onChangeUser,
    TResult Function()? onTapFilterOff,
    TResult Function(String guidTask)? onAcceptTask,
    TResult Function(String guidTask)? onSetControlDoneTask,
    TResult Function(String guidTask)? onCompleteTask,
    TResult Function(int index)? onTapNavBottomBar,
    TResult Function()? refrech,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvOnTapItem value) onTapItem,
    required TResult Function(EvOnTapFab value) onTapFab,
    required TResult Function(EvOnTapFilter value) onTapFilter,
    required TResult Function(EvOnChangeUser value) onChangeUser,
    required TResult Function(EvOnTapFilterOff value) onTapFilterOff,
    required TResult Function(EvOnAcceptTask value) onAcceptTask,
    required TResult Function(EvOnSetControlDoneTask value)
        onSetControlDoneTask,
    required TResult Function(EvOnCompleteTask value) onCompleteTask,
    required TResult Function(EvOnTapNavBottomBar value) onTapNavBottomBar,
    required TResult Function(EvRefresh value) refrech,
  }) {
    return refrech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
  }) {
    return refrech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvOnTapItem value)? onTapItem,
    TResult Function(EvOnTapFab value)? onTapFab,
    TResult Function(EvOnTapFilter value)? onTapFilter,
    TResult Function(EvOnChangeUser value)? onChangeUser,
    TResult Function(EvOnTapFilterOff value)? onTapFilterOff,
    TResult Function(EvOnAcceptTask value)? onAcceptTask,
    TResult Function(EvOnSetControlDoneTask value)? onSetControlDoneTask,
    TResult Function(EvOnCompleteTask value)? onCompleteTask,
    TResult Function(EvOnTapNavBottomBar value)? onTapNavBottomBar,
    TResult Function(EvRefresh value)? refrech,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvRefresh implements TasksUserEvent {
  const factory EvRefresh() = _$EvRefresh;
}

/// @nodoc
mixin _$TasksUserSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String guid) openTask,
    required TResult Function() openNewTask,
    required TResult Function() openChooseUserDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    TResult Function()? openChooseUserDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    TResult Function()? openChooseUserDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenTask value) openTask,
    required TResult Function(_SrOpenNewTask value) openNewTask,
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    required TResult Function() openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    required TResult Function() openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    required TResult Function() openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    required TResult Function() openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    TResult Function()? openChooseUserDialog,
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
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
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

/// @nodoc
abstract class _$$_SrOpenChooseUserDialogCopyWith<$Res> {
  factory _$$_SrOpenChooseUserDialogCopyWith(_$_SrOpenChooseUserDialog value,
          $Res Function(_$_SrOpenChooseUserDialog) then) =
      __$$_SrOpenChooseUserDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrOpenChooseUserDialogCopyWithImpl<$Res>
    extends _$TasksUserSRCopyWithImpl<$Res>
    implements _$$_SrOpenChooseUserDialogCopyWith<$Res> {
  __$$_SrOpenChooseUserDialogCopyWithImpl(_$_SrOpenChooseUserDialog _value,
      $Res Function(_$_SrOpenChooseUserDialog) _then)
      : super(_value, (v) => _then(v as _$_SrOpenChooseUserDialog));

  @override
  _$_SrOpenChooseUserDialog get _value =>
      super._value as _$_SrOpenChooseUserDialog;
}

/// @nodoc

class _$_SrOpenChooseUserDialog implements _SrOpenChooseUserDialog {
  const _$_SrOpenChooseUserDialog();

  @override
  String toString() {
    return 'TasksUserSR.openChooseUserDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrOpenChooseUserDialog);
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
    required TResult Function() openChooseUserDialog,
  }) {
    return openChooseUserDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    TResult Function()? openChooseUserDialog,
  }) {
    return openChooseUserDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(String guid)? openTask,
    TResult Function()? openNewTask,
    TResult Function()? openChooseUserDialog,
    required TResult orElse(),
  }) {
    if (openChooseUserDialog != null) {
      return openChooseUserDialog();
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
    required TResult Function(_SrOpenChooseUserDialog value)
        openChooseUserDialog,
  }) {
    return openChooseUserDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
  }) {
    return openChooseUserDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenTask value)? openTask,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    TResult Function(_SrOpenChooseUserDialog value)? openChooseUserDialog,
    required TResult orElse(),
  }) {
    if (openChooseUserDialog != null) {
      return openChooseUserDialog(this);
    }
    return orElse();
  }
}

abstract class _SrOpenChooseUserDialog implements TasksUserSR {
  const factory _SrOpenChooseUserDialog() = _$_SrOpenChooseUserDialog;
}
