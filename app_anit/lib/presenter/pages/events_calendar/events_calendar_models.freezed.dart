// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events_calendar_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsCalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
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
abstract class $EventsCalendarStateCopyWith<$Res> {
  factory $EventsCalendarStateCopyWith(
          EventsCalendarState value, $Res Function(EventsCalendarState) then) =
      _$EventsCalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarStateCopyWithImpl<$Res>
    implements $EventsCalendarStateCopyWith<$Res> {
  _$EventsCalendarStateCopyWithImpl(this._value, this._then);

  final EventsCalendarState _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      ViewCalendarType viewCalendarType,
      List<EventsData> listEventCalendarData});

  $ViewCalendarTypeCopyWith<$Res> get viewCalendarType;
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res>
    extends _$EventsCalendarStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? viewCalendarType = freezed,
    Object? listEventCalendarData = freezed,
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
      listEventCalendarData: listEventCalendarData == freezed
          ? _value._listEventCalendarData
          : listEventCalendarData // ignore: cast_nullable_to_non_nullable
              as List<EventsData>,
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
  const _$_StData(
      {required this.isLoading,
      required this.viewCalendarType,
      required final List<EventsData> listEventCalendarData})
      : _listEventCalendarData = listEventCalendarData,
        super._();

  @override
  final bool isLoading;
  @override
  final ViewCalendarType viewCalendarType;
  final List<EventsData> _listEventCalendarData;
  @override
  List<EventsData> get listEventCalendarData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listEventCalendarData);
  }

  @override
  String toString() {
    return 'EventsCalendarState.data(isLoading: $isLoading, viewCalendarType: $viewCalendarType, listEventCalendarData: $listEventCalendarData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.viewCalendarType, viewCalendarType) &&
            const DeepCollectionEquality()
                .equals(other._listEventCalendarData, _listEventCalendarData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(viewCalendarType),
      const DeepCollectionEquality().hash(_listEventCalendarData));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(isLoading, viewCalendarType, listEventCalendarData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(isLoading, viewCalendarType, listEventCalendarData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(isLoading, viewCalendarType, listEventCalendarData);
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

abstract class _StData extends EventsCalendarState {
  const factory _StData(
      {required final bool isLoading,
      required final ViewCalendarType viewCalendarType,
      required final List<EventsData> listEventCalendarData}) = _$_StData;
  const _StData._() : super._();

  bool get isLoading;
  ViewCalendarType get viewCalendarType;
  List<EventsData> get listEventCalendarData;
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
    extends _$EventsCalendarStateCopyWithImpl<$Res>
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
    return 'EventsCalendarState.empty()';
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
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
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

abstract class _StEmpty extends EventsCalendarState {
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
    extends _$EventsCalendarStateCopyWithImpl<$Res>
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
    return 'EventsCalendarState.error(message: $message)';
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
    required TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, ViewCalendarType viewCalendarType,
            List<EventsData> listEventCalendarData)?
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

abstract class _StError extends EventsCalendarState {
  const factory _StError({required final String message}) = _$_StError;
  const _StError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsData {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsDataCopyWith<EventsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsDataCopyWith<$Res> {
  factory $EventsDataCopyWith(
          EventsData value, $Res Function(EventsData) then) =
      _$EventsDataCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? description,
      Color color,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$EventsDataCopyWithImpl<$Res> implements $EventsDataCopyWith<$Res> {
  _$EventsDataCopyWithImpl(this._value, this._then);

  final EventsData _value;
  // ignore: unused_field
  final $Res Function(EventsData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_EventDataCopyWith<$Res>
    implements $EventsDataCopyWith<$Res> {
  factory _$$_EventDataCopyWith(
          _$_EventData value, $Res Function(_$_EventData) then) =
      __$$_EventDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? description,
      Color color,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$$_EventDataCopyWithImpl<$Res> extends _$EventsDataCopyWithImpl<$Res>
    implements _$$_EventDataCopyWith<$Res> {
  __$$_EventDataCopyWithImpl(
      _$_EventData _value, $Res Function(_$_EventData) _then)
      : super(_value, (v) => _then(v as _$_EventData));

  @override
  _$_EventData get _value => super._value as _$_EventData;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_EventData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_EventData extends _EventData {
  _$_EventData(
      {required this.title,
      this.description,
      this.color = Colors.blue,
      required this.startTime,
      required this.endTime})
      : super._();

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final Color color;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'EventsData(title: $title, description: $description, color: $color, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime));

  @JsonKey(ignore: true)
  @override
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
      __$$_EventDataCopyWithImpl<_$_EventData>(this, _$identity);
}

abstract class _EventData extends EventsData {
  factory _EventData(
      {required final String title,
      final String? description,
      final Color color,
      required final DateTime startTime,
      required final DateTime endTime}) = _$_EventData;
  _EventData._() : super._();

  @override
  String get title;
  @override
  String? get description;
  @override
  Color get color;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
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
    required TResult Function(DateTime day) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
    required TResult Function(_VctList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
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
    required TResult Function(DateTime day) list,
  }) {
    return month(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
  }) {
    return month?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
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
    required TResult Function(_VctList value) list,
  }) {
    return month(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
  }) {
    return month?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
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
    required TResult Function(DateTime day) list,
  }) {
    return day(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
  }) {
    return day?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
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
    required TResult Function(_VctList value) list,
  }) {
    return day(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
  }) {
    return day?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
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
    required TResult Function(DateTime day) list,
  }) {
    return week(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
  }) {
    return week?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
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
    required TResult Function(_VctList value) list,
  }) {
    return week(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
  }) {
    return week?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
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
abstract class _$$_VctListCopyWith<$Res>
    implements $ViewCalendarTypeCopyWith<$Res> {
  factory _$$_VctListCopyWith(
          _$_VctList value, $Res Function(_$_VctList) then) =
      __$$_VctListCopyWithImpl<$Res>;
  @override
  $Res call({DateTime day});
}

/// @nodoc
class __$$_VctListCopyWithImpl<$Res>
    extends _$ViewCalendarTypeCopyWithImpl<$Res>
    implements _$$_VctListCopyWith<$Res> {
  __$$_VctListCopyWithImpl(_$_VctList _value, $Res Function(_$_VctList) _then)
      : super(_value, (v) => _then(v as _$_VctList));

  @override
  _$_VctList get _value => super._value as _$_VctList;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$_VctList(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_VctList extends _VctList {
  const _$_VctList({required this.day}) : super._();

  @override
  final DateTime day;

  @override
  String toString() {
    return 'ViewCalendarType.list(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VctList &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_VctListCopyWith<_$_VctList> get copyWith =>
      __$$_VctListCopyWithImpl<_$_VctList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime day) month,
    required TResult Function(DateTime day) day,
    required TResult Function(DateTime day) week,
    required TResult Function(DateTime day) list,
  }) {
    return list(this.day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
  }) {
    return list?.call(this.day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime day)? month,
    TResult Function(DateTime day)? day,
    TResult Function(DateTime day)? week,
    TResult Function(DateTime day)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this.day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VctMonth value) month,
    required TResult Function(_VctDay value) day,
    required TResult Function(_VctWeek value) week,
    required TResult Function(_VctList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VctMonth value)? month,
    TResult Function(_VctDay value)? day,
    TResult Function(_VctWeek value)? week,
    TResult Function(_VctList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _VctList extends ViewCalendarType {
  const factory _VctList({required final DateTime day}) = _$_VctList;
  const _VctList._() : super._();

  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_VctListCopyWith<_$_VctList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsCalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCalendarEventCopyWith<$Res> {
  factory $EventsCalendarEventCopyWith(
          EventsCalendarEvent value, $Res Function(EventsCalendarEvent) then) =
      _$EventsCalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarEventCopyWithImpl<$Res>
    implements $EventsCalendarEventCopyWith<$Res> {
  _$EventsCalendarEventCopyWithImpl(this._value, this._then);

  final EventsCalendarEvent _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarEvent) _then;
}

/// @nodoc
abstract class _$$EvsInitCopyWith<$Res> {
  factory _$$EvsInitCopyWith(_$EvsInit value, $Res Function(_$EvsInit) then) =
      __$$EvsInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsInitCopyWithImpl<$Res>
    extends _$EventsCalendarEventCopyWithImpl<$Res>
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
    return 'EventsCalendarEvent.init()';
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
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvsInit implements EventsCalendarEvent {
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
    extends _$EventsCalendarEventCopyWithImpl<$Res>
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
    return 'EventsCalendarEvent.reload()';
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
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class EvsReload implements EventsCalendarEvent {
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
    extends _$EventsCalendarEventCopyWithImpl<$Res>
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
    return 'EventsCalendarEvent.refrech()';
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
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return refrech(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return refrech?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (refrech != null) {
      return refrech(this);
    }
    return orElse();
  }
}

abstract class EvsRefresh implements EventsCalendarEvent {
  const factory EvsRefresh() = _$EvsRefresh;
}

/// @nodoc
abstract class _$$EvsExitCopyWith<$Res> {
  factory _$$EvsExitCopyWith(_$EvsExit value, $Res Function(_$EvsExit) then) =
      __$$EvsExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvsExitCopyWithImpl<$Res>
    extends _$EventsCalendarEventCopyWithImpl<$Res>
    implements _$$EvsExitCopyWith<$Res> {
  __$$EvsExitCopyWithImpl(_$EvsExit _value, $Res Function(_$EvsExit) _then)
      : super(_value, (v) => _then(v as _$EvsExit));

  @override
  _$EvsExit get _value => super._value as _$EvsExit;
}

/// @nodoc

class _$EvsExit implements EvsExit {
  const _$EvsExit();

  @override
  String toString() {
    return 'EventsCalendarEvent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvsExit);
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
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class EvsExit implements EventsCalendarEvent {
  const factory EvsExit() = _$EvsExit;
}

/// @nodoc
abstract class _$$EvsOnTapDayCopyWith<$Res> {
  factory _$$EvsOnTapDayCopyWith(
          _$EvsOnTapDay value, $Res Function(_$EvsOnTapDay) then) =
      __$$EvsOnTapDayCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class __$$EvsOnTapDayCopyWithImpl<$Res>
    extends _$EventsCalendarEventCopyWithImpl<$Res>
    implements _$$EvsOnTapDayCopyWith<$Res> {
  __$$EvsOnTapDayCopyWithImpl(
      _$EvsOnTapDay _value, $Res Function(_$EvsOnTapDay) _then)
      : super(_value, (v) => _then(v as _$EvsOnTapDay));

  @override
  _$EvsOnTapDay get _value => super._value as _$EvsOnTapDay;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_$EvsOnTapDay(
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EvsOnTapDay implements EvsOnTapDay {
  const _$EvsOnTapDay(this.day);

  @override
  final DateTime day;

  @override
  String toString() {
    return 'EventsCalendarEvent.onTapDay(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvsOnTapDay &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$EvsOnTapDayCopyWith<_$EvsOnTapDay> get copyWith =>
      __$$EvsOnTapDayCopyWithImpl<_$EvsOnTapDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
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
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return onTapDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return onTapDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (onTapDay != null) {
      return onTapDay(this);
    }
    return orElse();
  }
}

abstract class EvsOnTapDay implements EventsCalendarEvent {
  const factory EvsOnTapDay(final DateTime day) = _$EvsOnTapDay;

  DateTime get day;
  @JsonKey(ignore: true)
  _$$EvsOnTapDayCopyWith<_$EvsOnTapDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvsOnChangeViewTypeCopyWith<$Res> {
  factory _$$EvsOnChangeViewTypeCopyWith(_$EvsOnChangeViewType value,
          $Res Function(_$EvsOnChangeViewType) then) =
      __$$EvsOnChangeViewTypeCopyWithImpl<$Res>;
  $Res call({int typeView});
}

/// @nodoc
class __$$EvsOnChangeViewTypeCopyWithImpl<$Res>
    extends _$EventsCalendarEventCopyWithImpl<$Res>
    implements _$$EvsOnChangeViewTypeCopyWith<$Res> {
  __$$EvsOnChangeViewTypeCopyWithImpl(
      _$EvsOnChangeViewType _value, $Res Function(_$EvsOnChangeViewType) _then)
      : super(_value, (v) => _then(v as _$EvsOnChangeViewType));

  @override
  _$EvsOnChangeViewType get _value => super._value as _$EvsOnChangeViewType;

  @override
  $Res call({
    Object? typeView = freezed,
  }) {
    return _then(_$EvsOnChangeViewType(
      typeView == freezed
          ? _value.typeView
          : typeView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EvsOnChangeViewType implements EvsOnChangeViewType {
  const _$EvsOnChangeViewType(this.typeView);

  @override
  final int typeView;

  @override
  String toString() {
    return 'EventsCalendarEvent.onChangeViewType(typeView: $typeView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvsOnChangeViewType &&
            const DeepCollectionEquality().equals(other.typeView, typeView));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(typeView));

  @JsonKey(ignore: true)
  @override
  _$$EvsOnChangeViewTypeCopyWith<_$EvsOnChangeViewType> get copyWith =>
      __$$EvsOnChangeViewTypeCopyWithImpl<_$EvsOnChangeViewType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
  }) {
    return onChangeViewType(typeView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
  }) {
    return onChangeViewType?.call(typeView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
    required TResult orElse(),
  }) {
    if (onChangeViewType != null) {
      return onChangeViewType(typeView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return onChangeViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return onChangeViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (onChangeViewType != null) {
      return onChangeViewType(this);
    }
    return orElse();
  }
}

abstract class EvsOnChangeViewType implements EventsCalendarEvent {
  const factory EvsOnChangeViewType(final int typeView) = _$EvsOnChangeViewType;

  int get typeView;
  @JsonKey(ignore: true)
  _$$EvsOnChangeViewTypeCopyWith<_$EvsOnChangeViewType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvsOnTapHourCopyWith<$Res> {
  factory _$$EvsOnTapHourCopyWith(
          _$EvsOnTapHour value, $Res Function(_$EvsOnTapHour) then) =
      __$$EvsOnTapHourCopyWithImpl<$Res>;
  $Res call({DateTime hour});
}

/// @nodoc
class __$$EvsOnTapHourCopyWithImpl<$Res>
    extends _$EventsCalendarEventCopyWithImpl<$Res>
    implements _$$EvsOnTapHourCopyWith<$Res> {
  __$$EvsOnTapHourCopyWithImpl(
      _$EvsOnTapHour _value, $Res Function(_$EvsOnTapHour) _then)
      : super(_value, (v) => _then(v as _$EvsOnTapHour));

  @override
  _$EvsOnTapHour get _value => super._value as _$EvsOnTapHour;

  @override
  $Res call({
    Object? hour = freezed,
  }) {
    return _then(_$EvsOnTapHour(
      hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EvsOnTapHour implements EvsOnTapHour {
  const _$EvsOnTapHour(this.hour);

  @override
  final DateTime hour;

  @override
  String toString() {
    return 'EventsCalendarEvent.onTapHour(hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvsOnTapHour &&
            const DeepCollectionEquality().equals(other.hour, hour));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hour));

  @JsonKey(ignore: true)
  @override
  _$$EvsOnTapHourCopyWith<_$EvsOnTapHour> get copyWith =>
      __$$EvsOnTapHourCopyWithImpl<_$EvsOnTapHour>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reload,
    required TResult Function() refrech,
    required TResult Function() exit,
    required TResult Function(DateTime day) onTapDay,
    required TResult Function(int typeView) onChangeViewType,
    required TResult Function(DateTime hour) onTapHour,
  }) {
    return onTapHour(hour);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
  }) {
    return onTapHour?.call(hour);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reload,
    TResult Function()? refrech,
    TResult Function()? exit,
    TResult Function(DateTime day)? onTapDay,
    TResult Function(int typeView)? onChangeViewType,
    TResult Function(DateTime hour)? onTapHour,
    required TResult orElse(),
  }) {
    if (onTapHour != null) {
      return onTapHour(hour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvsInit value) init,
    required TResult Function(EvsReload value) reload,
    required TResult Function(EvsRefresh value) refrech,
    required TResult Function(EvsExit value) exit,
    required TResult Function(EvsOnTapDay value) onTapDay,
    required TResult Function(EvsOnChangeViewType value) onChangeViewType,
    required TResult Function(EvsOnTapHour value) onTapHour,
  }) {
    return onTapHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
  }) {
    return onTapHour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvsInit value)? init,
    TResult Function(EvsReload value)? reload,
    TResult Function(EvsRefresh value)? refrech,
    TResult Function(EvsExit value)? exit,
    TResult Function(EvsOnTapDay value)? onTapDay,
    TResult Function(EvsOnChangeViewType value)? onChangeViewType,
    TResult Function(EvsOnTapHour value)? onTapHour,
    required TResult orElse(),
  }) {
    if (onTapHour != null) {
      return onTapHour(this);
    }
    return orElse();
  }
}

abstract class EvsOnTapHour implements EventsCalendarEvent {
  const factory EvsOnTapHour(final DateTime hour) = _$EvsOnTapHour;

  DateTime get hour;
  @JsonKey(ignore: true)
  _$$EvsOnTapHourCopyWith<_$EvsOnTapHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsCalendarSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(DateTime startTime) openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCalendarSRCopyWith<$Res> {
  factory $EventsCalendarSRCopyWith(
          EventsCalendarSR value, $Res Function(EventsCalendarSR) then) =
      _$EventsCalendarSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventsCalendarSRCopyWithImpl<$Res>
    implements $EventsCalendarSRCopyWith<$Res> {
  _$EventsCalendarSRCopyWithImpl(this._value, this._then);

  final EventsCalendarSR _value;
  // ignore: unused_field
  final $Res Function(EventsCalendarSR) _then;
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$EventsCalendarSRCopyWithImpl<$Res>
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
    return 'EventsCalendarSR.exit()';
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
    required TResult Function(DateTime startTime) openNewTask,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
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
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _SrExit implements EventsCalendarSR {
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
    extends _$EventsCalendarSRCopyWithImpl<$Res>
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
    return 'EventsCalendarSR.showSnackBar(message: $message)';
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
    required TResult Function(DateTime startTime) openNewTask,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
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
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class _SrShowSnackBar implements EventsCalendarSR {
  const factory _SrShowSnackBar(final String message) = _$_SrShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SrOpenNewTaskCopyWith<$Res> {
  factory _$$_SrOpenNewTaskCopyWith(
          _$_SrOpenNewTask value, $Res Function(_$_SrOpenNewTask) then) =
      __$$_SrOpenNewTaskCopyWithImpl<$Res>;
  $Res call({DateTime startTime});
}

/// @nodoc
class __$$_SrOpenNewTaskCopyWithImpl<$Res>
    extends _$EventsCalendarSRCopyWithImpl<$Res>
    implements _$$_SrOpenNewTaskCopyWith<$Res> {
  __$$_SrOpenNewTaskCopyWithImpl(
      _$_SrOpenNewTask _value, $Res Function(_$_SrOpenNewTask) _then)
      : super(_value, (v) => _then(v as _$_SrOpenNewTask));

  @override
  _$_SrOpenNewTask get _value => super._value as _$_SrOpenNewTask;

  @override
  $Res call({
    Object? startTime = freezed,
  }) {
    return _then(_$_SrOpenNewTask(
      startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SrOpenNewTask implements _SrOpenNewTask {
  const _$_SrOpenNewTask(this.startTime);

  @override
  final DateTime startTime;

  @override
  String toString() {
    return 'EventsCalendarSR.openNewTask(startTime: $startTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrOpenNewTask &&
            const DeepCollectionEquality().equals(other.startTime, startTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(startTime));

  @JsonKey(ignore: true)
  @override
  _$$_SrOpenNewTaskCopyWith<_$_SrOpenNewTask> get copyWith =>
      __$$_SrOpenNewTaskCopyWithImpl<_$_SrOpenNewTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() exit,
    required TResult Function(String message) showSnackBar,
    required TResult Function(DateTime startTime) openNewTask,
  }) {
    return openNewTask(startTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
  }) {
    return openNewTask?.call(startTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? exit,
    TResult Function(String message)? showSnackBar,
    TResult Function(DateTime startTime)? openNewTask,
    required TResult orElse(),
  }) {
    if (openNewTask != null) {
      return openNewTask(startTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
    required TResult Function(_SrShowSnackBar value) showSnackBar,
    required TResult Function(_SrOpenNewTask value) openNewTask,
  }) {
    return openNewTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
  }) {
    return openNewTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    TResult Function(_SrShowSnackBar value)? showSnackBar,
    TResult Function(_SrOpenNewTask value)? openNewTask,
    required TResult orElse(),
  }) {
    if (openNewTask != null) {
      return openNewTask(this);
    }
    return orElse();
  }
}

abstract class _SrOpenNewTask implements EventsCalendarSR {
  const factory _SrOpenNewTask(final DateTime startTime) = _$_SrOpenNewTask;

  DateTime get startTime;
  @JsonKey(ignore: true)
  _$$_SrOpenNewTaskCopyWith<_$_SrOpenNewTask> get copyWith =>
      throw _privateConstructorUsedError;
}
