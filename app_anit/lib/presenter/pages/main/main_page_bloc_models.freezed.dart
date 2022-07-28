// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;
}

/// @nodoc
abstract class _$$MainPageStateDataCopyWith<$Res> {
  factory _$$MainPageStateDataCopyWith(
          _$MainPageStateData value, $Res Function(_$MainPageStateData) then) =
      __$$MainPageStateDataCopyWithImpl<$Res>;
  $Res call({String user});
}

/// @nodoc
class __$$MainPageStateDataCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res>
    implements _$$MainPageStateDataCopyWith<$Res> {
  __$$MainPageStateDataCopyWithImpl(
      _$MainPageStateData _value, $Res Function(_$MainPageStateData) _then)
      : super(_value, (v) => _then(v as _$MainPageStateData));

  @override
  _$MainPageStateData get _value => super._value as _$MainPageStateData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$MainPageStateData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainPageStateData extends MainPageStateData {
  const _$MainPageStateData({required this.user}) : super._();

  @override
  final String user;

  @override
  String toString() {
    return 'MainPageState.data(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateData &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$MainPageStateDataCopyWith<_$MainPageStateData> get copyWith =>
      __$$MainPageStateDataCopyWithImpl<_$MainPageStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) data,
    required TResult Function() empty,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MainPageStateData extends MainPageState {
  const factory MainPageStateData({required final String user}) =
      _$MainPageStateData;
  const MainPageStateData._() : super._();

  String get user;
  @JsonKey(ignore: true)
  _$$MainPageStateDataCopyWith<_$MainPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$MainPageStateCopyWithImpl<$Res>
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
    return 'MainPageState.empty()';
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
    required TResult Function(String user) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? data,
    TResult Function()? empty,
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
    required TResult Function(MainPageStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends MainPageState {
  const factory _Empty() = _$_Empty;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$MainPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainPageEventInit value) init,
    required TResult Function(MainPageEventExit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageEventCopyWith<$Res> {
  factory $MainPageEventCopyWith(
          MainPageEvent value, $Res Function(MainPageEvent) then) =
      _$MainPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainPageEventCopyWithImpl<$Res>
    implements $MainPageEventCopyWith<$Res> {
  _$MainPageEventCopyWithImpl(this._value, this._then);

  final MainPageEvent _value;
  // ignore: unused_field
  final $Res Function(MainPageEvent) _then;
}

/// @nodoc
abstract class _$$MainPageEventInitCopyWith<$Res> {
  factory _$$MainPageEventInitCopyWith(
          _$MainPageEventInit value, $Res Function(_$MainPageEventInit) then) =
      __$$MainPageEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainPageEventInitCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res>
    implements _$$MainPageEventInitCopyWith<$Res> {
  __$$MainPageEventInitCopyWithImpl(
      _$MainPageEventInit _value, $Res Function(_$MainPageEventInit) _then)
      : super(_value, (v) => _then(v as _$MainPageEventInit));

  @override
  _$MainPageEventInit get _value => super._value as _$MainPageEventInit;
}

/// @nodoc

class _$MainPageEventInit implements MainPageEventInit {
  const _$MainPageEventInit();

  @override
  String toString() {
    return 'MainPageEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainPageEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
    required TResult Function(MainPageEventInit value) init,
    required TResult Function(MainPageEventExit value) exit,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MainPageEventInit implements MainPageEvent {
  const factory MainPageEventInit() = _$MainPageEventInit;
}

/// @nodoc
abstract class _$$MainPageEventExitCopyWith<$Res> {
  factory _$$MainPageEventExitCopyWith(
          _$MainPageEventExit value, $Res Function(_$MainPageEventExit) then) =
      __$$MainPageEventExitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainPageEventExitCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res>
    implements _$$MainPageEventExitCopyWith<$Res> {
  __$$MainPageEventExitCopyWithImpl(
      _$MainPageEventExit _value, $Res Function(_$MainPageEventExit) _then)
      : super(_value, (v) => _then(v as _$MainPageEventExit));

  @override
  _$MainPageEventExit get _value => super._value as _$MainPageEventExit;
}

/// @nodoc

class _$MainPageEventExit implements MainPageEventExit {
  const _$MainPageEventExit();

  @override
  String toString() {
    return 'MainPageEvent.exit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainPageEventExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() exit,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? exit,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
    required TResult Function(MainPageEventInit value) init,
    required TResult Function(MainPageEventExit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainPageEventInit value)? init,
    TResult Function(MainPageEventExit value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class MainPageEventExit implements MainPageEvent {
  const factory MainPageEventExit() = _$MainPageEventExit;
}

/// @nodoc
mixin _$MainPageSR {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowSnackbar value) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowSnackbar value)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageSRCopyWith<MainPageSR> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageSRCopyWith<$Res> {
  factory $MainPageSRCopyWith(
          MainPageSR value, $Res Function(MainPageSR) then) =
      _$MainPageSRCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$MainPageSRCopyWithImpl<$Res> implements $MainPageSRCopyWith<$Res> {
  _$MainPageSRCopyWithImpl(this._value, this._then);

  final MainPageSR _value;
  // ignore: unused_field
  final $Res Function(MainPageSR) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ShowSnackbarCopyWith<$Res>
    implements $MainPageSRCopyWith<$Res> {
  factory _$$_ShowSnackbarCopyWith(
          _$_ShowSnackbar value, $Res Function(_$_ShowSnackbar) then) =
      __$$_ShowSnackbarCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$$_ShowSnackbarCopyWithImpl<$Res> extends _$MainPageSRCopyWithImpl<$Res>
    implements _$$_ShowSnackbarCopyWith<$Res> {
  __$$_ShowSnackbarCopyWithImpl(
      _$_ShowSnackbar _value, $Res Function(_$_ShowSnackbar) _then)
      : super(_value, (v) => _then(v as _$_ShowSnackbar));

  @override
  _$_ShowSnackbar get _value => super._value as _$_ShowSnackbar;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_ShowSnackbar(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSnackbar implements _ShowSnackbar {
  const _$_ShowSnackbar({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'MainPageSR.showSnackbar(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowSnackbar &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_ShowSnackbarCopyWith<_$_ShowSnackbar> get copyWith =>
      __$$_ShowSnackbarCopyWithImpl<_$_ShowSnackbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) showSnackbar,
  }) {
    return showSnackbar(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? showSnackbar,
  }) {
    return showSnackbar?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowSnackbar value) showSnackbar,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowSnackbar value)? showSnackbar,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackbar implements MainPageSR {
  const factory _ShowSnackbar({required final String text}) = _$_ShowSnackbar;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_ShowSnackbarCopyWith<_$_ShowSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}
