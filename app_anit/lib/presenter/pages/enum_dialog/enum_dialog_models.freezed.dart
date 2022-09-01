// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enum_dialog_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnumDialogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RefEnum> list) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
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
abstract class $EnumDialogStateCopyWith<$Res> {
  factory $EnumDialogStateCopyWith(
          EnumDialogState value, $Res Function(EnumDialogState) then) =
      _$EnumDialogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnumDialogStateCopyWithImpl<$Res>
    implements $EnumDialogStateCopyWith<$Res> {
  _$EnumDialogStateCopyWithImpl(this._value, this._then);

  final EnumDialogState _value;
  // ignore: unused_field
  final $Res Function(EnumDialogState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({List<RefEnum> list});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res> extends _$EnumDialogStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_StData(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RefEnum>,
    ));
  }
}

/// @nodoc

class _$_StData extends _StData {
  const _$_StData({required final List<RefEnum> list})
      : _list = list,
        super._();

  final List<RefEnum> _list;
  @override
  List<RefEnum> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'EnumDialogState.data(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RefEnum> list) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(list);
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

abstract class _StData extends EnumDialogState {
  const factory _StData({required final List<RefEnum> list}) = _$_StData;
  const _StData._() : super._();

  List<RefEnum> get list;
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
class __$$_StEmptyCopyWithImpl<$Res> extends _$EnumDialogStateCopyWithImpl<$Res>
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
    return 'EnumDialogState.empty()';
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
    required TResult Function(List<RefEnum> list) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
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

abstract class _StEmpty extends EnumDialogState {
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
class __$$_StErrorCopyWithImpl<$Res> extends _$EnumDialogStateCopyWithImpl<$Res>
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
    return 'EnumDialogState.error(message: $message)';
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
    required TResult Function(List<RefEnum> list) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RefEnum> list)? data,
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

abstract class _StError extends EnumDialogState {
  const factory _StError({required final String message}) = _$_StError;
  const _StError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnumDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(RefEnum item) pressedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvLoad value) load,
    required TResult Function(EvPressedEnum value) pressedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumDialogEventCopyWith<$Res> {
  factory $EnumDialogEventCopyWith(
          EnumDialogEvent value, $Res Function(EnumDialogEvent) then) =
      _$EnumDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnumDialogEventCopyWithImpl<$Res>
    implements $EnumDialogEventCopyWith<$Res> {
  _$EnumDialogEventCopyWithImpl(this._value, this._then);

  final EnumDialogEvent _value;
  // ignore: unused_field
  final $Res Function(EnumDialogEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res> extends _$EnumDialogEventCopyWithImpl<$Res>
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
    return 'EnumDialogEvent.init()';
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
    required TResult Function() load,
    required TResult Function(RefEnum item) pressedItem,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
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
    required TResult Function(EvLoad value) load,
    required TResult Function(EvPressedEnum value) pressedItem,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements EnumDialogEvent {
  const factory EvInit() = _$EvInit;
}

/// @nodoc
abstract class _$$EvLoadCopyWith<$Res> {
  factory _$$EvLoadCopyWith(_$EvLoad value, $Res Function(_$EvLoad) then) =
      __$$EvLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvLoadCopyWithImpl<$Res> extends _$EnumDialogEventCopyWithImpl<$Res>
    implements _$$EvLoadCopyWith<$Res> {
  __$$EvLoadCopyWithImpl(_$EvLoad _value, $Res Function(_$EvLoad) _then)
      : super(_value, (v) => _then(v as _$EvLoad));

  @override
  _$EvLoad get _value => super._value as _$EvLoad;
}

/// @nodoc

class _$EvLoad implements EvLoad {
  const _$EvLoad();

  @override
  String toString() {
    return 'EnumDialogEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(RefEnum item) pressedItem,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvLoad value) load,
    required TResult Function(EvPressedEnum value) pressedItem,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class EvLoad implements EnumDialogEvent {
  const factory EvLoad() = _$EvLoad;
}

/// @nodoc
abstract class _$$EvPressedEnumCopyWith<$Res> {
  factory _$$EvPressedEnumCopyWith(
          _$EvPressedEnum value, $Res Function(_$EvPressedEnum) then) =
      __$$EvPressedEnumCopyWithImpl<$Res>;
  $Res call({RefEnum item});
}

/// @nodoc
class __$$EvPressedEnumCopyWithImpl<$Res>
    extends _$EnumDialogEventCopyWithImpl<$Res>
    implements _$$EvPressedEnumCopyWith<$Res> {
  __$$EvPressedEnumCopyWithImpl(
      _$EvPressedEnum _value, $Res Function(_$EvPressedEnum) _then)
      : super(_value, (v) => _then(v as _$EvPressedEnum));

  @override
  _$EvPressedEnum get _value => super._value as _$EvPressedEnum;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$EvPressedEnum(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as RefEnum,
    ));
  }
}

/// @nodoc

class _$EvPressedEnum implements EvPressedEnum {
  const _$EvPressedEnum(this.item);

  @override
  final RefEnum item;

  @override
  String toString() {
    return 'EnumDialogEvent.pressedItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvPressedEnum &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$EvPressedEnumCopyWith<_$EvPressedEnum> get copyWith =>
      __$$EvPressedEnumCopyWithImpl<_$EvPressedEnum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(RefEnum item) pressedItem,
  }) {
    return pressedItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
  }) {
    return pressedItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(RefEnum item)? pressedItem,
    required TResult orElse(),
  }) {
    if (pressedItem != null) {
      return pressedItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvLoad value) load,
    required TResult Function(EvPressedEnum value) pressedItem,
  }) {
    return pressedItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
  }) {
    return pressedItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvLoad value)? load,
    TResult Function(EvPressedEnum value)? pressedItem,
    required TResult orElse(),
  }) {
    if (pressedItem != null) {
      return pressedItem(this);
    }
    return orElse();
  }
}

abstract class EvPressedEnum implements EnumDialogEvent {
  const factory EvPressedEnum(final RefEnum item) = _$EvPressedEnum;

  RefEnum get item;
  @JsonKey(ignore: true)
  _$$EvPressedEnumCopyWith<_$EvPressedEnum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnumDialogSR {
  RefEnum? get refCatalog => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefEnum? refCatalog) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefEnum? refCatalog)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefEnum? refCatalog)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnumDialogSRCopyWith<EnumDialogSR> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumDialogSRCopyWith<$Res> {
  factory $EnumDialogSRCopyWith(
          EnumDialogSR value, $Res Function(EnumDialogSR) then) =
      _$EnumDialogSRCopyWithImpl<$Res>;
  $Res call({RefEnum? refCatalog});
}

/// @nodoc
class _$EnumDialogSRCopyWithImpl<$Res> implements $EnumDialogSRCopyWith<$Res> {
  _$EnumDialogSRCopyWithImpl(this._value, this._then);

  final EnumDialogSR _value;
  // ignore: unused_field
  final $Res Function(EnumDialogSR) _then;

  @override
  $Res call({
    Object? refCatalog = freezed,
  }) {
    return _then(_value.copyWith(
      refCatalog: refCatalog == freezed
          ? _value.refCatalog
          : refCatalog // ignore: cast_nullable_to_non_nullable
              as RefEnum?,
    ));
  }
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> implements $EnumDialogSRCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
  @override
  $Res call({RefEnum? refCatalog});
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$EnumDialogSRCopyWithImpl<$Res>
    implements _$$_SrExitCopyWith<$Res> {
  __$$_SrExitCopyWithImpl(_$_SrExit _value, $Res Function(_$_SrExit) _then)
      : super(_value, (v) => _then(v as _$_SrExit));

  @override
  _$_SrExit get _value => super._value as _$_SrExit;

  @override
  $Res call({
    Object? refCatalog = freezed,
  }) {
    return _then(_$_SrExit(
      refCatalog == freezed
          ? _value.refCatalog
          : refCatalog // ignore: cast_nullable_to_non_nullable
              as RefEnum?,
    ));
  }
}

/// @nodoc

class _$_SrExit implements _SrExit {
  const _$_SrExit(this.refCatalog);

  @override
  final RefEnum? refCatalog;

  @override
  String toString() {
    return 'EnumDialogSR.exit(refCatalog: $refCatalog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrExit &&
            const DeepCollectionEquality()
                .equals(other.refCatalog, refCatalog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(refCatalog));

  @JsonKey(ignore: true)
  @override
  _$$_SrExitCopyWith<_$_SrExit> get copyWith =>
      __$$_SrExitCopyWithImpl<_$_SrExit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefEnum? refCatalog) exit,
  }) {
    return exit(refCatalog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefEnum? refCatalog)? exit,
  }) {
    return exit?.call(refCatalog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefEnum? refCatalog)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(refCatalog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SrExit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SrExit value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _SrExit implements EnumDialogSR {
  const factory _SrExit(final RefEnum? refCatalog) = _$_SrExit;

  @override
  RefEnum? get refCatalog;
  @override
  @JsonKey(ignore: true)
  _$$_SrExitCopyWith<_$_SrExit> get copyWith =>
      throw _privateConstructorUsedError;
}
