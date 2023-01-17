// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_booking_widget_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomBookingWidgetState {
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
abstract class $RoomBookingWidgetStateCopyWith<$Res> {
  factory $RoomBookingWidgetStateCopyWith(RoomBookingWidgetState value,
          $Res Function(RoomBookingWidgetState) then) =
      _$RoomBookingWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingWidgetStateCopyWithImpl<$Res>
    implements $RoomBookingWidgetStateCopyWith<$Res> {
  _$RoomBookingWidgetStateCopyWithImpl(this._value, this._then);

  final RoomBookingWidgetState _value;
  // ignore: unused_field
  final $Res Function(RoomBookingWidgetState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res>
    extends _$RoomBookingWidgetStateCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetState.data(isLoading: $isLoading)';
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

abstract class _StData implements RoomBookingWidgetState {
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
    extends _$RoomBookingWidgetStateCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetState.empty()';
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

abstract class _StEmpty implements RoomBookingWidgetState {
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
    extends _$RoomBookingWidgetStateCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetState.error(message: $message)';
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

abstract class _StError implements RoomBookingWidgetState {
  const factory _StError({final String? message}) = _$_StError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomBookingWidgetEvent {
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvOnTap value) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBookingWidgetEventCopyWith<$Res> {
  factory $RoomBookingWidgetEventCopyWith(RoomBookingWidgetEvent value,
          $Res Function(RoomBookingWidgetEvent) then) =
      _$RoomBookingWidgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingWidgetEventCopyWithImpl<$Res>
    implements $RoomBookingWidgetEventCopyWith<$Res> {
  _$RoomBookingWidgetEventCopyWithImpl(this._value, this._then);

  final RoomBookingWidgetEvent _value;
  // ignore: unused_field
  final $Res Function(RoomBookingWidgetEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res>
    extends _$RoomBookingWidgetEventCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetEvent.init()';
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvOnTap value) onTap,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements RoomBookingWidgetEvent {
  const factory EvInit() = _$EvInit;
}

/// @nodoc
abstract class _$$EvReloadCopyWith<$Res> {
  factory _$$EvReloadCopyWith(
          _$EvReload value, $Res Function(_$EvReload) then) =
      __$$EvReloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvReloadCopyWithImpl<$Res>
    extends _$RoomBookingWidgetEventCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetEvent.reload()';
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvOnTap value) onTap,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvReload implements RoomBookingWidgetEvent {
  const factory EvReload() = _$EvReload;
}

/// @nodoc
abstract class _$$EvRefreshCopyWith<$Res> {
  factory _$$EvRefreshCopyWith(
          _$EvRefresh value, $Res Function(_$EvRefresh) then) =
      __$$EvRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvRefreshCopyWithImpl<$Res>
    extends _$RoomBookingWidgetEventCopyWithImpl<$Res>
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
    return 'RoomBookingWidgetEvent.refrech()';
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvOnTap value) onTap,
  }) {
    return refrech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
  }) {
    return refrech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvRefresh implements RoomBookingWidgetEvent {
  const factory EvRefresh() = _$EvRefresh;
}

/// @nodoc
abstract class _$$EvOnTapCopyWith<$Res> {
  factory _$$EvOnTapCopyWith(_$EvOnTap value, $Res Function(_$EvOnTap) then) =
      __$$EvOnTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvOnTapCopyWithImpl<$Res>
    extends _$RoomBookingWidgetEventCopyWithImpl<$Res>
    implements _$$EvOnTapCopyWith<$Res> {
  __$$EvOnTapCopyWithImpl(_$EvOnTap _value, $Res Function(_$EvOnTap) _then)
      : super(_value, (v) => _then(v as _$EvOnTap));

  @override
  _$EvOnTap get _value => super._value as _$EvOnTap;
}

/// @nodoc

class _$EvOnTap implements EvOnTap {
  const _$EvOnTap();

  @override
  String toString() {
    return 'RoomBookingWidgetEvent.onTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvOnTap);
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
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvOnTap value) onTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvOnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class EvOnTap implements RoomBookingWidgetEvent {
  const factory EvOnTap() = _$EvOnTap;
}

/// @nodoc
mixin _$RoomBookingWidgetSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openRoomBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openRoomBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openRoomBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenRoomBooking value) openRoomBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenRoomBooking value)? openRoomBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenRoomBooking value)? openRoomBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBookingWidgetSRCopyWith<$Res> {
  factory $RoomBookingWidgetSRCopyWith(
          RoomBookingWidgetSR value, $Res Function(RoomBookingWidgetSR) then) =
      _$RoomBookingWidgetSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingWidgetSRCopyWithImpl<$Res>
    implements $RoomBookingWidgetSRCopyWith<$Res> {
  _$RoomBookingWidgetSRCopyWithImpl(this._value, this._then);

  final RoomBookingWidgetSR _value;
  // ignore: unused_field
  final $Res Function(RoomBookingWidgetSR) _then;
}

/// @nodoc
abstract class _$$_OpenRoomBookingCopyWith<$Res> {
  factory _$$_OpenRoomBookingCopyWith(
          _$_OpenRoomBooking value, $Res Function(_$_OpenRoomBooking) then) =
      __$$_OpenRoomBookingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenRoomBookingCopyWithImpl<$Res>
    extends _$RoomBookingWidgetSRCopyWithImpl<$Res>
    implements _$$_OpenRoomBookingCopyWith<$Res> {
  __$$_OpenRoomBookingCopyWithImpl(
      _$_OpenRoomBooking _value, $Res Function(_$_OpenRoomBooking) _then)
      : super(_value, (v) => _then(v as _$_OpenRoomBooking));

  @override
  _$_OpenRoomBooking get _value => super._value as _$_OpenRoomBooking;
}

/// @nodoc

class _$_OpenRoomBooking implements _OpenRoomBooking {
  const _$_OpenRoomBooking();

  @override
  String toString() {
    return 'RoomBookingWidgetSR.openRoomBooking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenRoomBooking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openRoomBooking,
  }) {
    return openRoomBooking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openRoomBooking,
  }) {
    return openRoomBooking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openRoomBooking,
    required TResult orElse(),
  }) {
    if (openRoomBooking != null) {
      return openRoomBooking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenRoomBooking value) openRoomBooking,
  }) {
    return openRoomBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenRoomBooking value)? openRoomBooking,
  }) {
    return openRoomBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenRoomBooking value)? openRoomBooking,
    required TResult orElse(),
  }) {
    if (openRoomBooking != null) {
      return openRoomBooking(this);
    }
    return orElse();
  }
}

abstract class _OpenRoomBooking implements RoomBookingWidgetSR {
  const factory _OpenRoomBooking() = _$_OpenRoomBooking;
}
