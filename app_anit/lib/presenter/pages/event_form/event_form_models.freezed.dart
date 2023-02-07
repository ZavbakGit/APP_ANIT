// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_form_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Event? event, bool isModified)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
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
abstract class $EventFormStateCopyWith<$Res> {
  factory $EventFormStateCopyWith(
          EventFormState value, $Res Function(EventFormState) then) =
      _$EventFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventFormStateCopyWithImpl<$Res>
    implements $EventFormStateCopyWith<$Res> {
  _$EventFormStateCopyWithImpl(this._value, this._then);

  final EventFormState _value;
  // ignore: unused_field
  final $Res Function(EventFormState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({bool isLoading, Event? event, bool isModified});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res> extends _$EventFormStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? event = freezed,
    Object? isModified = freezed,
  }) {
    return _then(_$_StData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
      isModified: isModified == freezed
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StData extends _StData {
  const _$_StData(
      {required this.isLoading, required this.event, required this.isModified})
      : super._();

  @override
  final bool isLoading;
  @override
  final Event? event;
  @override
  final bool isModified;

  @override
  String toString() {
    return 'EventFormState.data(isLoading: $isLoading, event: $event, isModified: $isModified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other.isModified, isModified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(isModified));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Event? event, bool isModified)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(isLoading, event, isModified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(isLoading, event, isModified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, event, isModified);
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

abstract class _StData extends EventFormState {
  const factory _StData(
      {required final bool isLoading,
      required final Event? event,
      required final bool isModified}) = _$_StData;
  const _StData._() : super._();

  bool get isLoading;
  Event? get event;
  bool get isModified;
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
class __$$_StEmptyCopyWithImpl<$Res> extends _$EventFormStateCopyWithImpl<$Res>
    implements _$$_StEmptyCopyWith<$Res> {
  __$$_StEmptyCopyWithImpl(_$_StEmpty _value, $Res Function(_$_StEmpty) _then)
      : super(_value, (v) => _then(v as _$_StEmpty));

  @override
  _$_StEmpty get _value => super._value as _$_StEmpty;
}

/// @nodoc

class _$_StEmpty extends _StEmpty {
  const _$_StEmpty() : super._();

  @override
  String toString() {
    return 'EventFormState.empty()';
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
    required TResult Function(bool isLoading, Event? event, bool isModified)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
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

abstract class _StEmpty extends EventFormState {
  const factory _StEmpty() = _$_StEmpty;
  const _StEmpty._() : super._();
}

/// @nodoc
abstract class _$$_StErrorCopyWith<$Res> {
  factory _$$_StErrorCopyWith(
          _$_StError value, $Res Function(_$_StError) then) =
      __$$_StErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_StErrorCopyWithImpl<$Res> extends _$EventFormStateCopyWithImpl<$Res>
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
              as String,
    ));
  }
}

/// @nodoc

class _$_StError extends _StError {
  const _$_StError({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'EventFormState.error(message: $message)';
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
    required TResult Function(bool isLoading, Event? event, bool isModified)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Event? event, bool isModified)? data,
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

abstract class _StError extends EventFormState {
  const factory _StError({required final String message}) = _$_StError;
  const _StError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormEventCopyWith<$Res> {
  factory $EventFormEventCopyWith(
          EventFormEvent value, $Res Function(EventFormEvent) then) =
      _$EventFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventFormEventCopyWithImpl<$Res>
    implements $EventFormEventCopyWith<$Res> {
  _$EventFormEventCopyWithImpl(this._value, this._then);

  final EventFormEvent _value;
  // ignore: unused_field
  final $Res Function(EventFormEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res> extends _$EventFormEventCopyWithImpl<$Res>
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
    return 'EventFormEvent.init()';
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
    required TResult Function() refrech,
    required TResult Function() exit,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
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
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements EventFormEvent {
  const factory EvInit() = _$EvInit;
}

/// @nodoc
abstract class _$$EvReloadCopyWith<$Res> {
  factory _$$EvReloadCopyWith(
          _$EvReload value, $Res Function(_$EvReload) then) =
      __$$EvReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvReloadCopyWithImpl<$Res> extends _$EventFormEventCopyWithImpl<$Res>
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
    return 'EventFormEvent.reload()';
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
    required TResult Function() refrech,
    required TResult Function() exit,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
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
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvReload implements EventFormEvent {
  const factory EvReload() = _$EvReload;
}

/// @nodoc
abstract class _$$EvRefreshCopyWith<$Res> {
  factory _$$EvRefreshCopyWith(
          _$EvRefresh value, $Res Function(_$EvRefresh) then) =
      __$$EvRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvRefreshCopyWithImpl<$Res> extends _$EventFormEventCopyWithImpl<$Res>
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
    return 'EventFormEvent.refrech()';
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
    required TResult Function() refrech,
    required TResult Function() exit,
  }) {
    return refrech();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
  }) {
    return refrech?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
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
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
  }) {
    return refrech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
  }) {
    return refrech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvRefresh implements EventFormEvent {
  const factory EvRefresh() = _$EvRefresh;
}

/// @nodoc
abstract class _$$EvExitCopyWith<$Res> {
  factory _$$EvExitCopyWith(_$EvExit value, $Res Function(_$EvExit) then) =
      __$$EvExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvExitCopyWithImpl<$Res> extends _$EventFormEventCopyWithImpl<$Res>
    implements _$$EvExitCopyWith<$Res> {
  __$$EvExitCopyWithImpl(_$EvExit _value, $Res Function(_$EvExit) _then)
      : super(_value, (v) => _then(v as _$EvExit));

  @override
  _$EvExit get _value => super._value as _$EvExit;
}

/// @nodoc

class _$EvExit implements EvExit {
  const _$EvExit();

  @override
  String toString() {
    return 'EventFormEvent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class EvExit implements EventFormEvent {
  const factory EvExit() = _$EvExit;
}

/// @nodoc
mixin _$EventFormSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormSRCopyWith<$Res> {
  factory $EventFormSRCopyWith(
          EventFormSR value, $Res Function(EventFormSR) then) =
      _$EventFormSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventFormSRCopyWithImpl<$Res> implements $EventFormSRCopyWith<$Res> {
  _$EventFormSRCopyWithImpl(this._value, this._then);

  final EventFormSR _value;
  // ignore: unused_field
  final $Res Function(EventFormSR) _then;
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$EventFormSRCopyWithImpl<$Res>
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
    return 'EventFormSR.exit()';
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
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
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
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _SrExit implements EventFormSR {
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
    extends _$EventFormSRCopyWithImpl<$Res>
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
    return 'EventFormSR.showSnackBar(message: $message)';
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
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
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
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class _SrShowSnackBar implements EventFormSR {
  const factory _SrShowSnackBar(final String message) = _$_SrShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}
