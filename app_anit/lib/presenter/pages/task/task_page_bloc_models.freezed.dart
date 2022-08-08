// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_page_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task, bool isModified) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageStateData value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageStateCopyWith<$Res> {
  factory $TaskPageStateCopyWith(
          TaskPageState value, $Res Function(TaskPageState) then) =
      _$TaskPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskPageStateCopyWithImpl<$Res>
    implements $TaskPageStateCopyWith<$Res> {
  _$TaskPageStateCopyWithImpl(this._value, this._then);

  final TaskPageState _value;
  // ignore: unused_field
  final $Res Function(TaskPageState) _then;
}

/// @nodoc
abstract class _$$TaskPageStateDataCopyWith<$Res> {
  factory _$$TaskPageStateDataCopyWith(
          _$TaskPageStateData value, $Res Function(_$TaskPageStateData) then) =
      __$$TaskPageStateDataCopyWithImpl<$Res>;
  $Res call({Task task, bool isModified});
}

/// @nodoc
class __$$TaskPageStateDataCopyWithImpl<$Res>
    extends _$TaskPageStateCopyWithImpl<$Res>
    implements _$$TaskPageStateDataCopyWith<$Res> {
  __$$TaskPageStateDataCopyWithImpl(
      _$TaskPageStateData _value, $Res Function(_$TaskPageStateData) _then)
      : super(_value, (v) => _then(v as _$TaskPageStateData));

  @override
  _$TaskPageStateData get _value => super._value as _$TaskPageStateData;

  @override
  $Res call({
    Object? task = freezed,
    Object? isModified = freezed,
  }) {
    return _then(_$TaskPageStateData(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      isModified: isModified == freezed
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskPageStateData extends TaskPageStateData {
  const _$TaskPageStateData({required this.task, required this.isModified})
      : super._();

  @override
  final Task task;
  @override
  final bool isModified;

  @override
  String toString() {
    return 'TaskPageState.data(task: $task, isModified: $isModified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageStateData &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality()
                .equals(other.isModified, isModified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(isModified));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageStateDataCopyWith<_$TaskPageStateData> get copyWith =>
      __$$TaskPageStateDataCopyWithImpl<_$TaskPageStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task, bool isModified) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(task, isModified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(task, isModified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(task, isModified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageStateData value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TaskPageStateData extends TaskPageState {
  const factory TaskPageStateData(
      {required final Task task,
      required final bool isModified}) = _$TaskPageStateData;
  const TaskPageStateData._() : super._();

  Task get task;
  bool get isModified;
  @JsonKey(ignore: true)
  _$$TaskPageStateDataCopyWith<_$TaskPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCopyWithImpl<$Res> extends _$TaskPageStateCopyWithImpl<$Res>
    implements _$$EmptyCopyWith<$Res> {
  __$$EmptyCopyWithImpl(_$Empty _value, $Res Function(_$Empty) _then)
      : super(_value, (v) => _then(v as _$Empty));

  @override
  _$Empty get _value => super._value as _$Empty;
}

/// @nodoc

class _$Empty extends Empty {
  const _$Empty() : super._();

  @override
  String toString() {
    return 'TaskPageState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task, bool isModified) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
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
    required TResult Function(TaskPageStateData value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty extends TaskPageState {
  const factory Empty() = _$Empty;
  const Empty._() : super._();
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$TaskPageStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error extends Error {
  const _$Error({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'TaskPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task, bool isModified) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task, bool isModified)? data,
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
    required TResult Function(TaskPageStateData value) data,
    required TResult Function(Empty value) empty,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageStateData value)? data,
    TResult Function(Empty value)? empty,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends TaskPageState {
  const factory Error({required final String message}) = _$Error;
  const Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageEventCopyWith<$Res> {
  factory $TaskPageEventCopyWith(
          TaskPageEvent value, $Res Function(TaskPageEvent) then) =
      _$TaskPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskPageEventCopyWithImpl<$Res>
    implements $TaskPageEventCopyWith<$Res> {
  _$TaskPageEventCopyWithImpl(this._value, this._then);

  final TaskPageEvent _value;
  // ignore: unused_field
  final $Res Function(TaskPageEvent) _then;
}

/// @nodoc
abstract class _$$TaskPageEventInitCopyWith<$Res> {
  factory _$$TaskPageEventInitCopyWith(
          _$TaskPageEventInit value, $Res Function(_$TaskPageEventInit) then) =
      __$$TaskPageEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageEventInitCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventInitCopyWith<$Res> {
  __$$TaskPageEventInitCopyWithImpl(
      _$TaskPageEventInit _value, $Res Function(_$TaskPageEventInit) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventInit));

  @override
  _$TaskPageEventInit get _value => super._value as _$TaskPageEventInit;
}

/// @nodoc

class _$TaskPageEventInit implements TaskPageEventInit {
  const _$TaskPageEventInit();

  @override
  String toString() {
    return 'TaskPageEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskPageEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
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
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventInit implements TaskPageEvent {
  const factory TaskPageEventInit() = _$TaskPageEventInit;
}

/// @nodoc
abstract class _$$TaskPageEventExitCopyWith<$Res> {
  factory _$$TaskPageEventExitCopyWith(
          _$TaskPageEventExit value, $Res Function(_$TaskPageEventExit) then) =
      __$$TaskPageEventExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageEventExitCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventExitCopyWith<$Res> {
  __$$TaskPageEventExitCopyWithImpl(
      _$TaskPageEventExit _value, $Res Function(_$TaskPageEventExit) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventExit));

  @override
  _$TaskPageEventExit get _value => super._value as _$TaskPageEventExit;
}

/// @nodoc

class _$TaskPageEventExit implements TaskPageEventExit {
  const _$TaskPageEventExit();

  @override
  String toString() {
    return 'TaskPageEvent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskPageEventExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
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
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventExit implements TaskPageEvent {
  const factory TaskPageEventExit() = _$TaskPageEventExit;
}

/// @nodoc
abstract class _$$TaskPageEventSaveCopyWith<$Res> {
  factory _$$TaskPageEventSaveCopyWith(
          _$TaskPageEventSave value, $Res Function(_$TaskPageEventSave) then) =
      __$$TaskPageEventSaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageEventSaveCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventSaveCopyWith<$Res> {
  __$$TaskPageEventSaveCopyWithImpl(
      _$TaskPageEventSave _value, $Res Function(_$TaskPageEventSave) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventSave));

  @override
  _$TaskPageEventSave get _value => super._value as _$TaskPageEventSave;
}

/// @nodoc

class _$TaskPageEventSave implements TaskPageEventSave {
  const _$TaskPageEventSave();

  @override
  String toString() {
    return 'TaskPageEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskPageEventSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventSave implements TaskPageEvent {
  const factory TaskPageEventSave() = _$TaskPageEventSave;
}

/// @nodoc
abstract class _$$TaskPageEventChangeTitleCopyWith<$Res> {
  factory _$$TaskPageEventChangeTitleCopyWith(_$TaskPageEventChangeTitle value,
          $Res Function(_$TaskPageEventChangeTitle) then) =
      __$$TaskPageEventChangeTitleCopyWithImpl<$Res>;
  $Res call({String val});
}

/// @nodoc
class __$$TaskPageEventChangeTitleCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangeTitleCopyWith<$Res> {
  __$$TaskPageEventChangeTitleCopyWithImpl(_$TaskPageEventChangeTitle _value,
      $Res Function(_$TaskPageEventChangeTitle) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangeTitle));

  @override
  _$TaskPageEventChangeTitle get _value =>
      super._value as _$TaskPageEventChangeTitle;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangeTitle(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangeTitle implements TaskPageEventChangeTitle {
  const _$TaskPageEventChangeTitle(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'TaskPageEvent.changeTitle(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangeTitle &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangeTitleCopyWith<_$TaskPageEventChangeTitle>
      get copyWith =>
          __$$TaskPageEventChangeTitleCopyWithImpl<_$TaskPageEventChangeTitle>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changeTitle(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changeTitle?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangeTitle implements TaskPageEvent {
  const factory TaskPageEventChangeTitle(final String val) =
      _$TaskPageEventChangeTitle;

  String get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangeTitleCopyWith<_$TaskPageEventChangeTitle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventChangePartnerCopyWith<$Res> {
  factory _$$TaskPageEventChangePartnerCopyWith(
          _$TaskPageEventChangePartner value,
          $Res Function(_$TaskPageEventChangePartner) then) =
      __$$TaskPageEventChangePartnerCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventChangePartnerCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangePartnerCopyWith<$Res> {
  __$$TaskPageEventChangePartnerCopyWithImpl(
      _$TaskPageEventChangePartner _value,
      $Res Function(_$TaskPageEventChangePartner) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangePartner));

  @override
  _$TaskPageEventChangePartner get _value =>
      super._value as _$TaskPageEventChangePartner;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangePartner(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangePartner implements TaskPageEventChangePartner {
  const _$TaskPageEventChangePartner(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.changePartner(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangePartner &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangePartnerCopyWith<_$TaskPageEventChangePartner>
      get copyWith => __$$TaskPageEventChangePartnerCopyWithImpl<
          _$TaskPageEventChangePartner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changePartner(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changePartner?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changePartner != null) {
      return changePartner(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changePartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changePartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changePartner != null) {
      return changePartner(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangePartner implements TaskPageEvent {
  const factory TaskPageEventChangePartner(final RefCatalog val) =
      _$TaskPageEventChangePartner;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangePartnerCopyWith<_$TaskPageEventChangePartner>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventChangeResponsibleCopyWith<$Res> {
  factory _$$TaskPageEventChangeResponsibleCopyWith(
          _$TaskPageEventChangeResponsible value,
          $Res Function(_$TaskPageEventChangeResponsible) then) =
      __$$TaskPageEventChangeResponsibleCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventChangeResponsibleCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangeResponsibleCopyWith<$Res> {
  __$$TaskPageEventChangeResponsibleCopyWithImpl(
      _$TaskPageEventChangeResponsible _value,
      $Res Function(_$TaskPageEventChangeResponsible) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangeResponsible));

  @override
  _$TaskPageEventChangeResponsible get _value =>
      super._value as _$TaskPageEventChangeResponsible;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangeResponsible(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangeResponsible
    implements TaskPageEventChangeResponsible {
  const _$TaskPageEventChangeResponsible(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.changeResponsible(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangeResponsible &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangeResponsibleCopyWith<_$TaskPageEventChangeResponsible>
      get copyWith => __$$TaskPageEventChangeResponsibleCopyWithImpl<
          _$TaskPageEventChangeResponsible>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changeResponsible(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changeResponsible?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeResponsible != null) {
      return changeResponsible(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changeResponsible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changeResponsible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeResponsible != null) {
      return changeResponsible(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangeResponsible implements TaskPageEvent {
  const factory TaskPageEventChangeResponsible(final RefCatalog val) =
      _$TaskPageEventChangeResponsible;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangeResponsibleCopyWith<_$TaskPageEventChangeResponsible>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventChangeProducerCopyWith<$Res> {
  factory _$$TaskPageEventChangeProducerCopyWith(
          _$TaskPageEventChangeProducer value,
          $Res Function(_$TaskPageEventChangeProducer) then) =
      __$$TaskPageEventChangeProducerCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventChangeProducerCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangeProducerCopyWith<$Res> {
  __$$TaskPageEventChangeProducerCopyWithImpl(
      _$TaskPageEventChangeProducer _value,
      $Res Function(_$TaskPageEventChangeProducer) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangeProducer));

  @override
  _$TaskPageEventChangeProducer get _value =>
      super._value as _$TaskPageEventChangeProducer;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangeProducer(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangeProducer implements TaskPageEventChangeProducer {
  const _$TaskPageEventChangeProducer(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.changeProducer(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangeProducer &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangeProducerCopyWith<_$TaskPageEventChangeProducer>
      get copyWith => __$$TaskPageEventChangeProducerCopyWithImpl<
          _$TaskPageEventChangeProducer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changeProducer(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changeProducer?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeProducer != null) {
      return changeProducer(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changeProducer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changeProducer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeProducer != null) {
      return changeProducer(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangeProducer implements TaskPageEvent {
  const factory TaskPageEventChangeProducer(final RefCatalog val) =
      _$TaskPageEventChangeProducer;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangeProducerCopyWith<_$TaskPageEventChangeProducer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventChangeConditionCopyWith<$Res> {
  factory _$$TaskPageEventChangeConditionCopyWith(
          _$TaskPageEventChangeCondition value,
          $Res Function(_$TaskPageEventChangeCondition) then) =
      __$$TaskPageEventChangeConditionCopyWithImpl<$Res>;
  $Res call({RefEnum val});
}

/// @nodoc
class __$$TaskPageEventChangeConditionCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangeConditionCopyWith<$Res> {
  __$$TaskPageEventChangeConditionCopyWithImpl(
      _$TaskPageEventChangeCondition _value,
      $Res Function(_$TaskPageEventChangeCondition) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangeCondition));

  @override
  _$TaskPageEventChangeCondition get _value =>
      super._value as _$TaskPageEventChangeCondition;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangeCondition(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefEnum,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangeCondition implements TaskPageEventChangeCondition {
  const _$TaskPageEventChangeCondition(this.val);

  @override
  final RefEnum val;

  @override
  String toString() {
    return 'TaskPageEvent.changeCondition(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangeCondition &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangeConditionCopyWith<_$TaskPageEventChangeCondition>
      get copyWith => __$$TaskPageEventChangeConditionCopyWithImpl<
          _$TaskPageEventChangeCondition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changeCondition(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changeCondition?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeCondition != null) {
      return changeCondition(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changeCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changeCondition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeCondition != null) {
      return changeCondition(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangeCondition implements TaskPageEvent {
  const factory TaskPageEventChangeCondition(final RefEnum val) =
      _$TaskPageEventChangeCondition;

  RefEnum get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangeConditionCopyWith<_$TaskPageEventChangeCondition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventChangeImportanceCopyWith<$Res> {
  factory _$$TaskPageEventChangeImportanceCopyWith(
          _$TaskPageEventChangeImportance value,
          $Res Function(_$TaskPageEventChangeImportance) then) =
      __$$TaskPageEventChangeImportanceCopyWithImpl<$Res>;
  $Res call({RefEnum val});
}

/// @nodoc
class __$$TaskPageEventChangeImportanceCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventChangeImportanceCopyWith<$Res> {
  __$$TaskPageEventChangeImportanceCopyWithImpl(
      _$TaskPageEventChangeImportance _value,
      $Res Function(_$TaskPageEventChangeImportance) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventChangeImportance));

  @override
  _$TaskPageEventChangeImportance get _value =>
      super._value as _$TaskPageEventChangeImportance;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventChangeImportance(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefEnum,
    ));
  }
}

/// @nodoc

class _$TaskPageEventChangeImportance implements TaskPageEventChangeImportance {
  const _$TaskPageEventChangeImportance(this.val);

  @override
  final RefEnum val;

  @override
  String toString() {
    return 'TaskPageEvent.changeImportance(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventChangeImportance &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventChangeImportanceCopyWith<_$TaskPageEventChangeImportance>
      get copyWith => __$$TaskPageEventChangeImportanceCopyWithImpl<
          _$TaskPageEventChangeImportance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return changeImportance(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return changeImportance?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeImportance != null) {
      return changeImportance(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return changeImportance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return changeImportance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (changeImportance != null) {
      return changeImportance(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventChangeImportance implements TaskPageEvent {
  const factory TaskPageEventChangeImportance(final RefEnum val) =
      _$TaskPageEventChangeImportance;

  RefEnum get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventChangeImportanceCopyWith<_$TaskPageEventChangeImportance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventDellControllerCopyWith<$Res> {
  factory _$$TaskPageEventDellControllerCopyWith(
          _$TaskPageEventDellController value,
          $Res Function(_$TaskPageEventDellController) then) =
      __$$TaskPageEventDellControllerCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventDellControllerCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventDellControllerCopyWith<$Res> {
  __$$TaskPageEventDellControllerCopyWithImpl(
      _$TaskPageEventDellController _value,
      $Res Function(_$TaskPageEventDellController) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventDellController));

  @override
  _$TaskPageEventDellController get _value =>
      super._value as _$TaskPageEventDellController;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventDellController(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventDellController implements TaskPageEventDellController {
  const _$TaskPageEventDellController(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.dellController(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventDellController &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventDellControllerCopyWith<_$TaskPageEventDellController>
      get copyWith => __$$TaskPageEventDellControllerCopyWithImpl<
          _$TaskPageEventDellController>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return dellController(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return dellController?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (dellController != null) {
      return dellController(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return dellController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return dellController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (dellController != null) {
      return dellController(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventDellController implements TaskPageEvent {
  const factory TaskPageEventDellController(final RefCatalog val) =
      _$TaskPageEventDellController;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventDellControllerCopyWith<_$TaskPageEventDellController>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventDellAssistantCopyWith<$Res> {
  factory _$$TaskPageEventDellAssistantCopyWith(
          _$TaskPageEventDellAssistant value,
          $Res Function(_$TaskPageEventDellAssistant) then) =
      __$$TaskPageEventDellAssistantCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventDellAssistantCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventDellAssistantCopyWith<$Res> {
  __$$TaskPageEventDellAssistantCopyWithImpl(
      _$TaskPageEventDellAssistant _value,
      $Res Function(_$TaskPageEventDellAssistant) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventDellAssistant));

  @override
  _$TaskPageEventDellAssistant get _value =>
      super._value as _$TaskPageEventDellAssistant;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventDellAssistant(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventDellAssistant implements TaskPageEventDellAssistant {
  const _$TaskPageEventDellAssistant(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.dellAssistant(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventDellAssistant &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventDellAssistantCopyWith<_$TaskPageEventDellAssistant>
      get copyWith => __$$TaskPageEventDellAssistantCopyWithImpl<
          _$TaskPageEventDellAssistant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return dellAssistant(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return dellAssistant?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (dellAssistant != null) {
      return dellAssistant(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return dellAssistant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return dellAssistant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (dellAssistant != null) {
      return dellAssistant(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventDellAssistant implements TaskPageEvent {
  const factory TaskPageEventDellAssistant(final RefCatalog val) =
      _$TaskPageEventDellAssistant;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventDellAssistantCopyWith<_$TaskPageEventDellAssistant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventAddControllerCopyWith<$Res> {
  factory _$$TaskPageEventAddControllerCopyWith(
          _$TaskPageEventAddController value,
          $Res Function(_$TaskPageEventAddController) then) =
      __$$TaskPageEventAddControllerCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventAddControllerCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventAddControllerCopyWith<$Res> {
  __$$TaskPageEventAddControllerCopyWithImpl(
      _$TaskPageEventAddController _value,
      $Res Function(_$TaskPageEventAddController) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventAddController));

  @override
  _$TaskPageEventAddController get _value =>
      super._value as _$TaskPageEventAddController;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventAddController(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventAddController implements TaskPageEventAddController {
  const _$TaskPageEventAddController(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.addController(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventAddController &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventAddControllerCopyWith<_$TaskPageEventAddController>
      get copyWith => __$$TaskPageEventAddControllerCopyWithImpl<
          _$TaskPageEventAddController>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return addController(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return addController?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (addController != null) {
      return addController(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return addController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return addController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (addController != null) {
      return addController(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventAddController implements TaskPageEvent {
  const factory TaskPageEventAddController(final RefCatalog val) =
      _$TaskPageEventAddController;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventAddControllerCopyWith<_$TaskPageEventAddController>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventAddAssitantCopyWith<$Res> {
  factory _$$TaskPageEventAddAssitantCopyWith(_$TaskPageEventAddAssitant value,
          $Res Function(_$TaskPageEventAddAssitant) then) =
      __$$TaskPageEventAddAssitantCopyWithImpl<$Res>;
  $Res call({RefCatalog val});
}

/// @nodoc
class __$$TaskPageEventAddAssitantCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventAddAssitantCopyWith<$Res> {
  __$$TaskPageEventAddAssitantCopyWithImpl(_$TaskPageEventAddAssitant _value,
      $Res Function(_$TaskPageEventAddAssitant) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventAddAssitant));

  @override
  _$TaskPageEventAddAssitant get _value =>
      super._value as _$TaskPageEventAddAssitant;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventAddAssitant(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$TaskPageEventAddAssitant implements TaskPageEventAddAssitant {
  const _$TaskPageEventAddAssitant(this.val);

  @override
  final RefCatalog val;

  @override
  String toString() {
    return 'TaskPageEvent.addAssitant(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventAddAssitant &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventAddAssitantCopyWith<_$TaskPageEventAddAssitant>
      get copyWith =>
          __$$TaskPageEventAddAssitantCopyWithImpl<_$TaskPageEventAddAssitant>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return addAssitant(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return addAssitant?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (addAssitant != null) {
      return addAssitant(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return addAssitant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return addAssitant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (addAssitant != null) {
      return addAssitant(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventAddAssitant implements TaskPageEvent {
  const factory TaskPageEventAddAssitant(final RefCatalog val) =
      _$TaskPageEventAddAssitant;

  RefCatalog get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventAddAssitantCopyWith<_$TaskPageEventAddAssitant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskPageEventSetControlDoneCopyWith<$Res> {
  factory _$$TaskPageEventSetControlDoneCopyWith(
          _$TaskPageEventSetControlDone value,
          $Res Function(_$TaskPageEventSetControlDone) then) =
      __$$TaskPageEventSetControlDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageEventSetControlDoneCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventSetControlDoneCopyWith<$Res> {
  __$$TaskPageEventSetControlDoneCopyWithImpl(
      _$TaskPageEventSetControlDone _value,
      $Res Function(_$TaskPageEventSetControlDone) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventSetControlDone));

  @override
  _$TaskPageEventSetControlDone get _value =>
      super._value as _$TaskPageEventSetControlDone;
}

/// @nodoc

class _$TaskPageEventSetControlDone implements TaskPageEventSetControlDone {
  const _$TaskPageEventSetControlDone();

  @override
  String toString() {
    return 'TaskPageEvent.setControlDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventSetControlDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return setControlDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return setControlDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (setControlDone != null) {
      return setControlDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return setControlDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return setControlDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (setControlDone != null) {
      return setControlDone(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventSetControlDone implements TaskPageEvent {
  const factory TaskPageEventSetControlDone() = _$TaskPageEventSetControlDone;
}

/// @nodoc
abstract class _$$TaskPageEventSetControlCopyWith<$Res> {
  factory _$$TaskPageEventSetControlCopyWith(_$TaskPageEventSetControl value,
          $Res Function(_$TaskPageEventSetControl) then) =
      __$$TaskPageEventSetControlCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskPageEventSetControlCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventSetControlCopyWith<$Res> {
  __$$TaskPageEventSetControlCopyWithImpl(_$TaskPageEventSetControl _value,
      $Res Function(_$TaskPageEventSetControl) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventSetControl));

  @override
  _$TaskPageEventSetControl get _value =>
      super._value as _$TaskPageEventSetControl;
}

/// @nodoc

class _$TaskPageEventSetControl implements TaskPageEventSetControl {
  const _$TaskPageEventSetControl();

  @override
  String toString() {
    return 'TaskPageEvent.setControl()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventSetControl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return setControl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return setControl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (setControl != null) {
      return setControl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return setControl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return setControl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (setControl != null) {
      return setControl(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventSetControl implements TaskPageEvent {
  const factory TaskPageEventSetControl() = _$TaskPageEventSetControl;
}

/// @nodoc
abstract class _$$TaskPageEventSaveDialogResultCopyWith<$Res> {
  factory _$$TaskPageEventSaveDialogResultCopyWith(
          _$TaskPageEventSaveDialogResult value,
          $Res Function(_$TaskPageEventSaveDialogResult) then) =
      __$$TaskPageEventSaveDialogResultCopyWithImpl<$Res>;
  $Res call({bool val});
}

/// @nodoc
class __$$TaskPageEventSaveDialogResultCopyWithImpl<$Res>
    extends _$TaskPageEventCopyWithImpl<$Res>
    implements _$$TaskPageEventSaveDialogResultCopyWith<$Res> {
  __$$TaskPageEventSaveDialogResultCopyWithImpl(
      _$TaskPageEventSaveDialogResult _value,
      $Res Function(_$TaskPageEventSaveDialogResult) _then)
      : super(_value, (v) => _then(v as _$TaskPageEventSaveDialogResult));

  @override
  _$TaskPageEventSaveDialogResult get _value =>
      super._value as _$TaskPageEventSaveDialogResult;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_$TaskPageEventSaveDialogResult(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskPageEventSaveDialogResult implements TaskPageEventSaveDialogResult {
  const _$TaskPageEventSaveDialogResult(this.val);

  @override
  final bool val;

  @override
  String toString() {
    return 'TaskPageEvent.saveDialogResult(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPageEventSaveDialogResult &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  _$$TaskPageEventSaveDialogResultCopyWith<_$TaskPageEventSaveDialogResult>
      get copyWith => __$$TaskPageEventSaveDialogResultCopyWithImpl<
          _$TaskPageEventSaveDialogResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
    required TResult Function() save,
    required TResult Function(String val) changeTitle,
    required TResult Function(RefCatalog val) changePartner,
    required TResult Function(RefCatalog val) changeResponsible,
    required TResult Function(RefCatalog val) changeProducer,
    required TResult Function(RefEnum val) changeCondition,
    required TResult Function(RefEnum val) changeImportance,
    required TResult Function(RefCatalog val) dellController,
    required TResult Function(RefCatalog val) dellAssistant,
    required TResult Function(RefCatalog val) addController,
    required TResult Function(RefCatalog val) addAssitant,
    required TResult Function() setControlDone,
    required TResult Function() setControl,
    required TResult Function(bool val) saveDialogResult,
  }) {
    return saveDialogResult(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
  }) {
    return saveDialogResult?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    TResult Function()? save,
    TResult Function(String val)? changeTitle,
    TResult Function(RefCatalog val)? changePartner,
    TResult Function(RefCatalog val)? changeResponsible,
    TResult Function(RefCatalog val)? changeProducer,
    TResult Function(RefEnum val)? changeCondition,
    TResult Function(RefEnum val)? changeImportance,
    TResult Function(RefCatalog val)? dellController,
    TResult Function(RefCatalog val)? dellAssistant,
    TResult Function(RefCatalog val)? addController,
    TResult Function(RefCatalog val)? addAssitant,
    TResult Function()? setControlDone,
    TResult Function()? setControl,
    TResult Function(bool val)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (saveDialogResult != null) {
      return saveDialogResult(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskPageEventInit value) init,
    required TResult Function(TaskPageEventExit value) exit,
    required TResult Function(TaskPageEventSave value) save,
    required TResult Function(TaskPageEventChangeTitle value) changeTitle,
    required TResult Function(TaskPageEventChangePartner value) changePartner,
    required TResult Function(TaskPageEventChangeResponsible value)
        changeResponsible,
    required TResult Function(TaskPageEventChangeProducer value) changeProducer,
    required TResult Function(TaskPageEventChangeCondition value)
        changeCondition,
    required TResult Function(TaskPageEventChangeImportance value)
        changeImportance,
    required TResult Function(TaskPageEventDellController value) dellController,
    required TResult Function(TaskPageEventDellAssistant value) dellAssistant,
    required TResult Function(TaskPageEventAddController value) addController,
    required TResult Function(TaskPageEventAddAssitant value) addAssitant,
    required TResult Function(TaskPageEventSetControlDone value) setControlDone,
    required TResult Function(TaskPageEventSetControl value) setControl,
    required TResult Function(TaskPageEventSaveDialogResult value)
        saveDialogResult,
  }) {
    return saveDialogResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
  }) {
    return saveDialogResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskPageEventInit value)? init,
    TResult Function(TaskPageEventExit value)? exit,
    TResult Function(TaskPageEventSave value)? save,
    TResult Function(TaskPageEventChangeTitle value)? changeTitle,
    TResult Function(TaskPageEventChangePartner value)? changePartner,
    TResult Function(TaskPageEventChangeResponsible value)? changeResponsible,
    TResult Function(TaskPageEventChangeProducer value)? changeProducer,
    TResult Function(TaskPageEventChangeCondition value)? changeCondition,
    TResult Function(TaskPageEventChangeImportance value)? changeImportance,
    TResult Function(TaskPageEventDellController value)? dellController,
    TResult Function(TaskPageEventDellAssistant value)? dellAssistant,
    TResult Function(TaskPageEventAddController value)? addController,
    TResult Function(TaskPageEventAddAssitant value)? addAssitant,
    TResult Function(TaskPageEventSetControlDone value)? setControlDone,
    TResult Function(TaskPageEventSetControl value)? setControl,
    TResult Function(TaskPageEventSaveDialogResult value)? saveDialogResult,
    required TResult orElse(),
  }) {
    if (saveDialogResult != null) {
      return saveDialogResult(this);
    }
    return orElse();
  }
}

abstract class TaskPageEventSaveDialogResult implements TaskPageEvent {
  const factory TaskPageEventSaveDialogResult(final bool val) =
      _$TaskPageEventSaveDialogResult;

  bool get val;
  @JsonKey(ignore: true)
  _$$TaskPageEventSaveDialogResultCopyWith<_$TaskPageEventSaveDialogResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskPageSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function() openSaveDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exit value) exit,
    required TResult Function(OpenSaveDialog value) openSaveDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageSRCopyWith<$Res> {
  factory $TaskPageSRCopyWith(
          TaskPageSR value, $Res Function(TaskPageSR) then) =
      _$TaskPageSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskPageSRCopyWithImpl<$Res> implements $TaskPageSRCopyWith<$Res> {
  _$TaskPageSRCopyWithImpl(this._value, this._then);

  final TaskPageSR _value;
  // ignore: unused_field
  final $Res Function(TaskPageSR) _then;
}

/// @nodoc
abstract class _$$ExitCopyWith<$Res> {
  factory _$$ExitCopyWith(_$Exit value, $Res Function(_$Exit) then) =
      __$$ExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitCopyWithImpl<$Res> extends _$TaskPageSRCopyWithImpl<$Res>
    implements _$$ExitCopyWith<$Res> {
  __$$ExitCopyWithImpl(_$Exit _value, $Res Function(_$Exit) _then)
      : super(_value, (v) => _then(v as _$Exit));

  @override
  _$Exit get _value => super._value as _$Exit;
}

/// @nodoc

class _$Exit implements Exit {
  const _$Exit();

  @override
  String toString() {
    return 'TaskPageSR.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Exit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function() openSaveDialog,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
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
    required TResult Function(Exit value) exit,
    required TResult Function(OpenSaveDialog value) openSaveDialog,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class Exit implements TaskPageSR {
  const factory Exit() = _$Exit;
}

/// @nodoc
abstract class _$$OpenSaveDialogCopyWith<$Res> {
  factory _$$OpenSaveDialogCopyWith(
          _$OpenSaveDialog value, $Res Function(_$OpenSaveDialog) then) =
      __$$OpenSaveDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenSaveDialogCopyWithImpl<$Res>
    extends _$TaskPageSRCopyWithImpl<$Res>
    implements _$$OpenSaveDialogCopyWith<$Res> {
  __$$OpenSaveDialogCopyWithImpl(
      _$OpenSaveDialog _value, $Res Function(_$OpenSaveDialog) _then)
      : super(_value, (v) => _then(v as _$OpenSaveDialog));

  @override
  _$OpenSaveDialog get _value => super._value as _$OpenSaveDialog;
}

/// @nodoc

class _$OpenSaveDialog implements OpenSaveDialog {
  const _$OpenSaveDialog();

  @override
  String toString() {
    return 'TaskPageSR.openSaveDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenSaveDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function() openSaveDialog,
  }) {
    return openSaveDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
  }) {
    return openSaveDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function()? openSaveDialog,
    required TResult orElse(),
  }) {
    if (openSaveDialog != null) {
      return openSaveDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exit value) exit,
    required TResult Function(OpenSaveDialog value) openSaveDialog,
  }) {
    return openSaveDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
  }) {
    return openSaveDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exit value)? exit,
    TResult Function(OpenSaveDialog value)? openSaveDialog,
    required TResult orElse(),
  }) {
    if (openSaveDialog != null) {
      return openSaveDialog(this);
    }
    return orElse();
  }
}

abstract class OpenSaveDialog implements TaskPageSR {
  const factory OpenSaveDialog() = _$OpenSaveDialog;
}
