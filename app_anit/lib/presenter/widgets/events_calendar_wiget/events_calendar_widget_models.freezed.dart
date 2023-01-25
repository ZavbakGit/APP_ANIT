// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_calendar_widget_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsCalendarWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
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
abstract class $EventsCalendarWidgetStateCopyWith<$Res> {
  factory $EventsCalendarWidgetStateCopyWith(EventsCalendarWidgetState value,
          $Res Function(EventsCalendarWidgetState) then) =
      _$EventsCalendarWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarWidgetStateCopyWithImpl<$Res>
    implements $EventsCalendarWidgetStateCopyWith<$Res> {
  _$EventsCalendarWidgetStateCopyWithImpl(this._value, this._then);

  final EventsCalendarWidgetState _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarWidgetState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$_StData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StData implements _StData {
  const _$_StData({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'EventsCalendarWidgetState.data(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return data(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return data?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading);
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

abstract class _StData implements EventsCalendarWidgetState {
  const factory _StData({required final bool isLoading}) = _$_StData;

  bool get isLoading;
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
class __$$_StEmptyCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetStateCopyWithImpl<$Res>
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
    return 'EventsCalendarWidgetState.empty()';
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
    required TResult Function(bool isLoading) data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
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

abstract class _StEmpty implements EventsCalendarWidgetState {
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
class __$$_StErrorCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetStateCopyWithImpl<$Res>
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
    return 'EventsCalendarWidgetState.error(message: $message)';
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
    required TResult Function(bool isLoading) data,
    required TResult Function() empty,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
    TResult Function()? empty,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? data,
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

abstract class _StError implements EventsCalendarWidgetState {
  const factory _StError({final String? message}) = _$_StError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsCalendarWidgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsOnTap value) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCalendarWidgetEventCopyWith<$Res> {
  factory $EventsCalendarWidgetEventCopyWith(EventsCalendarWidgetEvent value,
          $Res Function(EventsCalendarWidgetEvent) then) =
      _$EventsCalendarWidgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarWidgetEventCopyWithImpl<$Res>
    implements $EventsCalendarWidgetEventCopyWith<$Res> {
  _$EventsCalendarWidgetEventCopyWithImpl(this._value, this._then);

  final EventsCalendarWidgetEvent _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarWidgetEvent) _then;
}

/// @nodoc
abstract class _$$EvsInitCopyWith<$Res> {
  factory _$$EvsInitCopyWith(_$EvsInit value, $Res Function(_$EvsInit) then) =
      __$$EvsInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsInitCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetEventCopyWithImpl<$Res>
    implements _$$EvsInitCopyWith<$Res> {
  __$$EvsInitCopyWithImpl(_$EvsInit _value, $Res Function(_$EvsInit) _then)
      : super(_value, (v) => _then(v as _$EvsInit));

  @override
  _$EvsInit get _value => super._value as _$EvsInit;
}

/// @nodoc

class _$EvsInit implements EvsInit {
  const _$EvsInit();

  @override
  String toString() {
    return 'EventsCalendarWidgetEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvsInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() onTap,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
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
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsOnTap value) onTap,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvsInit implements EventsCalendarWidgetEvent {
  const factory EvsInit() = _$EvsInit;
}

/// @nodoc
abstract class _$$EvsReloadCopyWith<$Res> {
  factory _$$EvsReloadCopyWith(
          _$EvsReload value, $Res Function(_$EvsReload) then) =
      __$$EvsReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsReloadCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetEventCopyWithImpl<$Res>
    implements _$$EvsReloadCopyWith<$Res> {
  __$$EvsReloadCopyWithImpl(
      _$EvsReload _value, $Res Function(_$EvsReload) _then)
      : super(_value, (v) => _then(v as _$EvsReload));

  @override
  _$EvsReload get _value => super._value as _$EvsReload;
}

/// @nodoc

class _$EvsReload implements EvsReload {
  const _$EvsReload();

  @override
  String toString() {
    return 'EventsCalendarWidgetEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvsReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() onTap,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
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
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsOnTap value) onTap,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvsReload implements EventsCalendarWidgetEvent {
  const factory EvsReload() = _$EvsReload;
}

/// @nodoc
abstract class _$$EvsRefreshCopyWith<$Res> {
  factory _$$EvsRefreshCopyWith(
          _$EvsRefresh value, $Res Function(_$EvsRefresh) then) =
      __$$EvsRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsRefreshCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetEventCopyWithImpl<$Res>
    implements _$$EvsRefreshCopyWith<$Res> {
  __$$EvsRefreshCopyWithImpl(
      _$EvsRefresh _value, $Res Function(_$EvsRefresh) _then)
      : super(_value, (v) => _then(v as _$EvsRefresh));

  @override
  _$EvsRefresh get _value => super._value as _$EvsRefresh;
}

/// @nodoc

class _$EvsRefresh implements EvsRefresh {
  const _$EvsRefresh();

  @override
  String toString() {
    return 'EventsCalendarWidgetEvent.refrech()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvsRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() onTap,
  }) {
    return refrech();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
  }) {
    return refrech?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
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
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsOnTap value) onTap,
  }) {
    return refrech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
  }) {
    return refrech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvsRefresh implements EventsCalendarWidgetEvent {
  const factory EvsRefresh() = _$EvsRefresh;
}

/// @nodoc
abstract class _$$EvsOnTapCopyWith<$Res> {
  factory _$$EvsOnTapCopyWith(
          _$EvsOnTap value, $Res Function(_$EvsOnTap) then) =
      __$$EvsOnTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsOnTapCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetEventCopyWithImpl<$Res>
    implements _$$EvsOnTapCopyWith<$Res> {
  __$$EvsOnTapCopyWithImpl(_$EvsOnTap _value, $Res Function(_$EvsOnTap) _then)
      : super(_value, (v) => _then(v as _$EvsOnTap));

  @override
  _$EvsOnTap get _value => super._value as _$EvsOnTap;
}

/// @nodoc

class _$EvsOnTap implements EvsOnTap {
  const _$EvsOnTap();

  @override
  String toString() {
    return 'EventsCalendarWidgetEvent.onTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvsOnTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() onTap,
  }) {
    return onTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
  }) {
    return onTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsOnTap value) onTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class EvsOnTap implements EventsCalendarWidgetEvent {
  const factory EvsOnTap() = _$EvsOnTap;
}

/// @nodoc
mixin _$EventsCalendarWidgetSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openEventCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openEventCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openEventCalendar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEventsCalendar value) openEventCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenEventsCalendar value)? openEventCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEventsCalendar value)? openEventCalendar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCalendarWidgetSRCopyWith<$Res> {
  factory $EventsCalendarWidgetSRCopyWith(EventsCalendarWidgetSR value,
          $Res Function(EventsCalendarWidgetSR) then) =
      _$EventsCalendarWidgetSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarWidgetSRCopyWithImpl<$Res>
    implements $EventsCalendarWidgetSRCopyWith<$Res> {
  _$EventsCalendarWidgetSRCopyWithImpl(this._value, this._then);

  final EventsCalendarWidgetSR _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarWidgetSR) _then;
}

/// @nodoc
abstract class _$$_OpenEventsCalendarCopyWith<$Res> {
  factory _$$_OpenEventsCalendarCopyWith(_$_OpenEventsCalendar value,
          $Res Function(_$_OpenEventsCalendar) then) =
      __$$_OpenEventsCalendarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenEventsCalendarCopyWithImpl<$Res>
    extends _$EventsCalendarWidgetSRCopyWithImpl<$Res>
    implements _$$_OpenEventsCalendarCopyWith<$Res> {
  __$$_OpenEventsCalendarCopyWithImpl(
      _$_OpenEventsCalendar _value, $Res Function(_$_OpenEventsCalendar) _then)
      : super(_value, (v) => _then(v as _$_OpenEventsCalendar));

  @override
  _$_OpenEventsCalendar get _value => super._value as _$_OpenEventsCalendar;
}

/// @nodoc

class _$_OpenEventsCalendar implements _OpenEventsCalendar {
  const _$_OpenEventsCalendar();

  @override
  String toString() {
    return 'EventsCalendarWidgetSR.openEventCalendar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenEventsCalendar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openEventCalendar,
  }) {
    return openEventCalendar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openEventCalendar,
  }) {
    return openEventCalendar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openEventCalendar,
    required TResult orElse(),
  }) {
    if (openEventCalendar != null) {
      return openEventCalendar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEventsCalendar value) openEventCalendar,
  }) {
    return openEventCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenEventsCalendar value)? openEventCalendar,
  }) {
    return openEventCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEventsCalendar value)? openEventCalendar,
    required TResult orElse(),
  }) {
    if (openEventCalendar != null) {
      return openEventCalendar(this);
    }
    return orElse();
  }
}

abstract class _OpenEventsCalendar implements EventsCalendarWidgetSR {
  const factory _OpenEventsCalendar() = _$_OpenEventsCalendar;
}
