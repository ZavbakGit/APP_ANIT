// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_booking_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomBookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
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
abstract class $RoomBookingStateCopyWith<$Res> {
  factory $RoomBookingStateCopyWith(
          RoomBookingState value, $Res Function(RoomBookingState) then) =
      _$RoomBookingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingStateCopyWithImpl<$Res>
    implements $RoomBookingStateCopyWith<$Res> {
  _$RoomBookingStateCopyWithImpl(this._value, this._then);

  final RoomBookingState _value;
  // ignore: unused_field
  final $Res Function(RoomBookingState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({bool isLoading, ViewCalendarType viewCalendarType});

  $ViewCalendarTypeCopyWith<$Res> get viewCalendarType;
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res> extends _$RoomBookingStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? viewCalendarType = freezed,
  }) {
    return _then(_$_StData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCalendarType: viewCalendarType == freezed
          ? _value.viewCalendarType
          : viewCalendarType // ignore: cast_nullable_to_non_nullable
              as ViewCalendarType,
    ));
  }

  @override
  $ViewCalendarTypeCopyWith<$Res> get viewCalendarType {
    return $ViewCalendarTypeCopyWith<$Res>(_value.viewCalendarType, (value) {
      return _then(_value.copyWith(viewCalendarType: value));
    });
  }
}

/// @nodoc

class _$_StData extends _StData {
  const _$_StData({required this.isLoading, required this.viewCalendarType})
      : super._();

  @override
  final bool isLoading;
  @override
  final ViewCalendarType viewCalendarType;

  @override
  String toString() {
    return 'RoomBookingState.data(isLoading: $isLoading, viewCalendarType: $viewCalendarType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.viewCalendarType, viewCalendarType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(viewCalendarType));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(isLoading, viewCalendarType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(isLoading, viewCalendarType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, viewCalendarType);
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

abstract class _StData extends RoomBookingState {
  const factory _StData(
      {required final bool isLoading,
      required final ViewCalendarType viewCalendarType}) = _$_StData;
  const _StData._() : super._();

  bool get isLoading;
  ViewCalendarType get viewCalendarType;
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
    extends _$RoomBookingStateCopyWithImpl<$Res>
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
    return 'RoomBookingState.empty()';
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
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
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

abstract class _StEmpty extends RoomBookingState {
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
class __$$_StErrorCopyWithImpl<$Res>
    extends _$RoomBookingStateCopyWithImpl<$Res>
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
    return 'RoomBookingState.error(message: $message)';
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
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType)? data,
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

abstract class _StError extends RoomBookingState {
  const factory _StError({required final String message}) = _$_StError;
  const _StError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewCalendarType {
  DateTime get day => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime day) month,
    required TResult Function(DateTime day) day,
    required TResult Function(DateTime day) week,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewCalendarTypeCopyWith<ViewCalendarType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewCalendarTypeCopyWith<$Res> {
  factory $ViewCalendarTypeCopyWith(
          ViewCalendarType value, $Res Function(ViewCalendarType) then) =
      _$ViewCalendarTypeCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class _$ViewCalendarTypeCopyWithImpl<$Res>
    implements $ViewCalendarTypeCopyWith<$Res> {
  _$ViewCalendarTypeCopyWithImpl(this._value, this._then);

  final ViewCalendarType _value;
  // ignore: unused_field
  final $Res Function(ViewCalendarType) _then;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_VctMonthCopyWith<$Res>
    implements $ViewCalendarTypeCopyWith<$Res> {
  factory _$$_VctMonthCopyWith(
          _$_VctMonth value, $Res Function(_$_VctMonth) then) =
      __$$_VctMonthCopyWithImpl<$Res>;
  @override
  $Res call({DateTime day});
}

/// @nodoc
class __$$_VctMonthCopyWithImpl<$Res>
    extends _$ViewCalendarTypeCopyWithImpl<$Res>
    implements _$$_VctMonthCopyWith<$Res> {
  __$$_VctMonthCopyWithImpl(
      _$_VctMonth _value, $Res Function(_$_VctMonth) _then)
      : super(_value, (v) => _then(v as _$_VctMonth));

  @override
  _$_VctMonth get _value => super._value as _$_VctMonth;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$_VctMonth(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_VctMonth extends _VctMonth {
  const _$_VctMonth({required this.day}) : super._();

  @override
  final DateTime day;

  @override
  String toString() {
    return 'ViewCalendarType.month(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VctMonth &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_VctMonthCopyWith<_$_VctMonth> get copyWith =>
      __$$_VctMonthCopyWithImpl<_$_VctMonth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime day) month,
    required TResult Function(DateTime day) day,
    required TResult Function(DateTime day) week,
  }) {
    return month(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
  }) {
    return month?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    required TResult orElse(),
  }) {
    if (month != null) {
      return month(this.day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
  }) {
    return month(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
  }) {
    return month?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    required TResult orElse(),
  }) {
    if (month != null) {
      return month(this);
    }
    return orElse();
  }
}

abstract class _VctMonth extends ViewCalendarType {
  const factory _VctMonth({required final DateTime day}) = _$_VctMonth;
  const _VctMonth._() : super._();

  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_VctMonthCopyWith<_$_VctMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VctDayCopyWith<$Res>
    implements $ViewCalendarTypeCopyWith<$Res> {
  factory _$$_VctDayCopyWith(_$_VctDay value, $Res Function(_$_VctDay) then) =
      __$$_VctDayCopyWithImpl<$Res>;
  @override
  $Res call({DateTime day});
}

/// @nodoc
class __$$_VctDayCopyWithImpl<$Res> extends _$ViewCalendarTypeCopyWithImpl<$Res>
    implements _$$_VctDayCopyWith<$Res> {
  __$$_VctDayCopyWithImpl(_$_VctDay _value, $Res Function(_$_VctDay) _then)
      : super(_value, (v) => _then(v as _$_VctDay));

  @override
  _$_VctDay get _value => super._value as _$_VctDay;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$_VctDay(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_VctDay extends _VctDay {
  const _$_VctDay({required this.day}) : super._();

  @override
  final DateTime day;

  @override
  String toString() {
    return 'ViewCalendarType.day(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VctDay &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_VctDayCopyWith<_$_VctDay> get copyWith =>
      __$$_VctDayCopyWithImpl<_$_VctDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime day) month,
    required TResult Function(DateTime day) day,
    required TResult Function(DateTime day) week,
  }) {
    return day(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
  }) {
    return day?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    required TResult orElse(),
  }) {
    if (day != null) {
      return day(this.day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
  }) {
    return day(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
  }) {
    return day?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    required TResult orElse(),
  }) {
    if (day != null) {
      return day(this);
    }
    return orElse();
  }
}

abstract class _VctDay extends ViewCalendarType {
  const factory _VctDay({required final DateTime day}) = _$_VctDay;
  const _VctDay._() : super._();

  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_VctDayCopyWith<_$_VctDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VctWeekCopyWith<$Res>
    implements $ViewCalendarTypeCopyWith<$Res> {
  factory _$$_VctWeekCopyWith(
          _$_VctWeek value, $Res Function(_$_VctWeek) then) =
      __$$_VctWeekCopyWithImpl<$Res>;
  @override
  $Res call({DateTime day});
}

/// @nodoc
class __$$_VctWeekCopyWithImpl<$Res>
    extends _$ViewCalendarTypeCopyWithImpl<$Res>
    implements _$$_VctWeekCopyWith<$Res> {
  __$$_VctWeekCopyWithImpl(_$_VctWeek _value, $Res Function(_$_VctWeek) _then)
      : super(_value, (v) => _then(v as _$_VctWeek));

  @override
  _$_VctWeek get _value => super._value as _$_VctWeek;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$_VctWeek(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_VctWeek extends _VctWeek {
  const _$_VctWeek({required this.day}) : super._();

  @override
  final DateTime day;

  @override
  String toString() {
    return 'ViewCalendarType.week(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VctWeek &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_VctWeekCopyWith<_$_VctWeek> get copyWith =>
      __$$_VctWeekCopyWithImpl<_$_VctWeek>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime day) month,
    required TResult Function(DateTime day) day,
    required TResult Function(DateTime day) week,
  }) {
    return week(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
  }) {
    return week?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    required TResult orElse(),
  }) {
    if (week != null) {
      return week(this.day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
  }) {
    return week(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
  }) {
    return week?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    required TResult orElse(),
  }) {
    if (week != null) {
      return week(this);
    }
    return orElse();
  }
}

abstract class _VctWeek extends ViewCalendarType {
  const factory _VctWeek({required final DateTime day}) = _$_VctWeek;
  const _VctWeek._() : super._();

  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_VctWeekCopyWith<_$_VctWeek> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvReload value) reload,
    required TResult Function(EvRefresh value) refrech,
    required TResult Function(EvExit value) exit,
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBookingEventCopyWith<$Res> {
  factory $RoomBookingEventCopyWith(
          RoomBookingEvent value, $Res Function(RoomBookingEvent) then) =
      _$RoomBookingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingEventCopyWithImpl<$Res>
    implements $RoomBookingEventCopyWith<$Res> {
  _$RoomBookingEventCopyWithImpl(this._value, this._then);

  final RoomBookingEvent _value;
  // ignore: unused_field
  final $Res Function(RoomBookingEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res> extends _$RoomBookingEventCopyWithImpl<$Res>
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
    return 'RoomBookingEvent.init()';
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements RoomBookingEvent {
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
    extends _$RoomBookingEventCopyWithImpl<$Res>
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
    return 'RoomBookingEvent.reload()';
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvReload implements RoomBookingEvent {
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
    extends _$RoomBookingEventCopyWithImpl<$Res>
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
    return 'RoomBookingEvent.refrech()';
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvRefresh implements RoomBookingEvent {
  const factory EvRefresh() = _$EvRefresh;
}

/// @nodoc
abstract class _$$EvExitCopyWith<$Res> {
  factory _$$EvExitCopyWith(_$EvExit value, $Res Function(_$EvExit) then) =
      __$$EvExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvExitCopyWithImpl<$Res> extends _$RoomBookingEventCopyWithImpl<$Res>
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
    return 'RoomBookingEvent.exit()';
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
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
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class EvExit implements RoomBookingEvent {
  const factory EvExit() = _$EvExit;
}

/// @nodoc
abstract class _$$EvOnTapDayCopyWith<$Res> {
  factory _$$EvOnTapDayCopyWith(
          _$EvOnTapDay value, $Res Function(_$EvOnTapDay) then) =
      __$$EvOnTapDayCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class __$$EvOnTapDayCopyWithImpl<$Res>
    extends _$RoomBookingEventCopyWithImpl<$Res>
    implements _$$EvOnTapDayCopyWith<$Res> {
  __$$EvOnTapDayCopyWithImpl(
      _$EvOnTapDay _value, $Res Function(_$EvOnTapDay) _then)
      : super(_value, (v) => _then(v as _$EvOnTapDay));

  @override
  _$EvOnTapDay get _value => super._value as _$EvOnTapDay;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$EvOnTapDay(
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EvOnTapDay implements EvOnTapDay {
  const _$EvOnTapDay(this.day);

  @override
  final DateTime day;

  @override
  String toString() {
    return 'RoomBookingEvent.onTapDay(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvOnTapDay &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$EvOnTapDayCopyWith<_$EvOnTapDay> get copyWith =>
      __$$EvOnTapDayCopyWithImpl<_$EvOnTapDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
  }) {
    return onTapDay(day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
  }) {
    return onTapDay?.call(day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapDay != null) {
      return onTapDay(day);
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
  }) {
    return onTapDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
  }) {
    return onTapDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapDay != null) {
      return onTapDay(this);
    }
    return orElse();
  }
}

abstract class EvOnTapDay implements RoomBookingEvent {
  const factory EvOnTapDay(final DateTime day) = _$EvOnTapDay;

  DateTime get day;
  @JsonKey(ignore: true)
  _$$EvOnTapDayCopyWith<_$EvOnTapDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EVOnTapMenuDayCopyWith<$Res> {
  factory _$$EVOnTapMenuDayCopyWith(
          _$EVOnTapMenuDay value, $Res Function(_$EVOnTapMenuDay) then) =
      __$$EVOnTapMenuDayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EVOnTapMenuDayCopyWithImpl<$Res>
    extends _$RoomBookingEventCopyWithImpl<$Res>
    implements _$$EVOnTapMenuDayCopyWith<$Res> {
  __$$EVOnTapMenuDayCopyWithImpl(
      _$EVOnTapMenuDay _value, $Res Function(_$EVOnTapMenuDay) _then)
      : super(_value, (v) => _then(v as _$EVOnTapMenuDay));

  @override
  _$EVOnTapMenuDay get _value => super._value as _$EVOnTapMenuDay;
}

/// @nodoc

class _$EVOnTapMenuDay implements EVOnTapMenuDay {
  const _$EVOnTapMenuDay();

  @override
  String toString() {
    return 'RoomBookingEvent.onTapMenuDay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EVOnTapMenuDay);
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
  }) {
    return onTapMenuDay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
  }) {
    return onTapMenuDay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuDay != null) {
      return onTapMenuDay();
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
  }) {
    return onTapMenuDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
  }) {
    return onTapMenuDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuDay != null) {
      return onTapMenuDay(this);
    }
    return orElse();
  }
}

abstract class EVOnTapMenuDay implements RoomBookingEvent {
  const factory EVOnTapMenuDay() = _$EVOnTapMenuDay;
}

/// @nodoc
abstract class _$$EVOnTapMenuMonthCopyWith<$Res> {
  factory _$$EVOnTapMenuMonthCopyWith(
          _$EVOnTapMenuMonth value, $Res Function(_$EVOnTapMenuMonth) then) =
      __$$EVOnTapMenuMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EVOnTapMenuMonthCopyWithImpl<$Res>
    extends _$RoomBookingEventCopyWithImpl<$Res>
    implements _$$EVOnTapMenuMonthCopyWith<$Res> {
  __$$EVOnTapMenuMonthCopyWithImpl(
      _$EVOnTapMenuMonth _value, $Res Function(_$EVOnTapMenuMonth) _then)
      : super(_value, (v) => _then(v as _$EVOnTapMenuMonth));

  @override
  _$EVOnTapMenuMonth get _value => super._value as _$EVOnTapMenuMonth;
}

/// @nodoc

class _$EVOnTapMenuMonth implements EVOnTapMenuMonth {
  const _$EVOnTapMenuMonth();

  @override
  String toString() {
    return 'RoomBookingEvent.onTapMenuMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EVOnTapMenuMonth);
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
  }) {
    return onTapMenuMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
  }) {
    return onTapMenuMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuMonth != null) {
      return onTapMenuMonth();
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
  }) {
    return onTapMenuMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
  }) {
    return onTapMenuMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuMonth != null) {
      return onTapMenuMonth(this);
    }
    return orElse();
  }
}

abstract class EVOnTapMenuMonth implements RoomBookingEvent {
  const factory EVOnTapMenuMonth() = _$EVOnTapMenuMonth;
}

/// @nodoc
abstract class _$$EVOnTapMenuWeekCopyWith<$Res> {
  factory _$$EVOnTapMenuWeekCopyWith(
          _$EVOnTapMenuWeek value, $Res Function(_$EVOnTapMenuWeek) then) =
      __$$EVOnTapMenuWeekCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EVOnTapMenuWeekCopyWithImpl<$Res>
    extends _$RoomBookingEventCopyWithImpl<$Res>
    implements _$$EVOnTapMenuWeekCopyWith<$Res> {
  __$$EVOnTapMenuWeekCopyWithImpl(
      _$EVOnTapMenuWeek _value, $Res Function(_$EVOnTapMenuWeek) _then)
      : super(_value, (v) => _then(v as _$EVOnTapMenuWeek));

  @override
  _$EVOnTapMenuWeek get _value => super._value as _$EVOnTapMenuWeek;
}

/// @nodoc

class _$EVOnTapMenuWeek implements EVOnTapMenuWeek {
  const _$EVOnTapMenuWeek();

  @override
  String toString() {
    return 'RoomBookingEvent.onTapMenuWeek()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EVOnTapMenuWeek);
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
    required TResult Function(DateTime day) onTapDay,
    required TResult Function() onTapMenuDay,
    required TResult Function() onTapMenuMonth,
    required TResult Function() onTapMenuWeek,
  }) {
    return onTapMenuWeek();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
  }) {
    return onTapMenuWeek?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function()? onTapMenuDay,
    TResult Function()? onTapMenuMonth,
    TResult Function()? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuWeek != null) {
      return onTapMenuWeek();
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
    required TResult Function(EvOnTapDay value) onTapDay,
    required TResult Function(EVOnTapMenuDay value) onTapMenuDay,
    required TResult Function(EVOnTapMenuMonth value) onTapMenuMonth,
    required TResult Function(EVOnTapMenuWeek value) onTapMenuWeek,
  }) {
    return onTapMenuWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
  }) {
    return onTapMenuWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvReload value)? reload,
    TResult Function(EvRefresh value)? refrech,
    TResult Function(EvExit value)? exit,
    TResult Function(EvOnTapDay value)? onTapDay,
    TResult Function(EVOnTapMenuDay value)? onTapMenuDay,
    TResult Function(EVOnTapMenuMonth value)? onTapMenuMonth,
    TResult Function(EVOnTapMenuWeek value)? onTapMenuWeek,
    required TResult orElse(),
  }) {
    if (onTapMenuWeek != null) {
      return onTapMenuWeek(this);
    }
    return orElse();
  }
}

abstract class EVOnTapMenuWeek implements RoomBookingEvent {
  const factory EVOnTapMenuWeek() = _$EVOnTapMenuWeek;
}

/// @nodoc
mixin _$RoomBookingSR {
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
abstract class $RoomBookingSRCopyWith<$Res> {
  factory $RoomBookingSRCopyWith(
          RoomBookingSR value, $Res Function(RoomBookingSR) then) =
      _$RoomBookingSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBookingSRCopyWithImpl<$Res>
    implements $RoomBookingSRCopyWith<$Res> {
  _$RoomBookingSRCopyWithImpl(this._value, this._then);

  final RoomBookingSR _value;
  // ignore: unused_field
  final $Res Function(RoomBookingSR) _then;
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$RoomBookingSRCopyWithImpl<$Res>
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
    return 'RoomBookingSR.exit()';
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

abstract class _SrExit implements RoomBookingSR {
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
    extends _$RoomBookingSRCopyWithImpl<$Res>
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
    return 'RoomBookingSR.showSnackBar(message: $message)';
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

abstract class _SrShowSnackBar implements RoomBookingSR {
  const factory _SrShowSnackBar(final String message) = _$_SrShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}
