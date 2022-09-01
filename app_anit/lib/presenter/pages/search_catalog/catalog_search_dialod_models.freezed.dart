// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_search_dialod_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDialogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
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
abstract class $SearchDialogStateCopyWith<$Res> {
  factory $SearchDialogStateCopyWith(
          SearchDialogState value, $Res Function(SearchDialogState) then) =
      _$SearchDialogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDialogStateCopyWithImpl<$Res>
    implements $SearchDialogStateCopyWith<$Res> {
  _$SearchDialogStateCopyWithImpl(this._value, this._then);

  final SearchDialogState _value;
  // ignore: unused_field
  final $Res Function(SearchDialogState) _then;
}

/// @nodoc
abstract class _$$_StDataCopyWith<$Res> {
  factory _$$_StDataCopyWith(_$_StData value, $Res Function(_$_StData) then) =
      __$$_StDataCopyWithImpl<$Res>;
  $Res call({List<RefCatalog> list, bool isLoadingList, String searchStr});
}

/// @nodoc
class __$$_StDataCopyWithImpl<$Res>
    extends _$SearchDialogStateCopyWithImpl<$Res>
    implements _$$_StDataCopyWith<$Res> {
  __$$_StDataCopyWithImpl(_$_StData _value, $Res Function(_$_StData) _then)
      : super(_value, (v) => _then(v as _$_StData));

  @override
  _$_StData get _value => super._value as _$_StData;

  @override
  $Res call({
    Object? list = freezed,
    Object? isLoadingList = freezed,
    Object? searchStr = freezed,
  }) {
    return _then(_$_StData(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RefCatalog>,
      isLoadingList: isLoadingList == freezed
          ? _value.isLoadingList
          : isLoadingList // ignore: cast_nullable_to_non_nullable
              as bool,
      searchStr: searchStr == freezed
          ? _value.searchStr
          : searchStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StData extends _StData {
  const _$_StData(
      {required final List<RefCatalog> list,
      required this.isLoadingList,
      required this.searchStr})
      : _list = list,
        super._();

  final List<RefCatalog> _list;
  @override
  List<RefCatalog> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final bool isLoadingList;
  @override
  final String searchStr;

  @override
  String toString() {
    return 'SearchDialogState.data(list: $list, isLoadingList: $isLoadingList, searchStr: $searchStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StData &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingList, isLoadingList) &&
            const DeepCollectionEquality().equals(other.searchStr, searchStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(isLoadingList),
      const DeepCollectionEquality().hash(searchStr));

  @JsonKey(ignore: true)
  @override
  _$$_StDataCopyWith<_$_StData> get copyWith =>
      __$$_StDataCopyWithImpl<_$_StData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(list, isLoadingList, searchStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return data?.call(list, isLoadingList, searchStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(list, isLoadingList, searchStr);
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

abstract class _StData extends SearchDialogState {
  const factory _StData(
      {required final List<RefCatalog> list,
      required final bool isLoadingList,
      required final String searchStr}) = _$_StData;
  const _StData._() : super._();

  List<RefCatalog> get list;
  bool get isLoadingList;
  String get searchStr;
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
    extends _$SearchDialogStateCopyWithImpl<$Res>
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
    return 'SearchDialogState.empty()';
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
            List<RefCatalog> list, bool isLoadingList, String searchStr)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
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

abstract class _StEmpty extends SearchDialogState {
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
    extends _$SearchDialogStateCopyWithImpl<$Res>
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
    return 'SearchDialogState.error(message: $message)';
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
            List<RefCatalog> list, bool isLoadingList, String searchStr)
        data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
        data,
    TResult Function()? empty,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RefCatalog> list, bool isLoadingList, String searchStr)?
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

abstract class _StError extends SearchDialogState {
  const factory _StError({required final String message}) = _$_StError;
  const _StError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StErrorCopyWith<_$_StError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDialogEventCopyWith<$Res> {
  factory $SearchDialogEventCopyWith(
          SearchDialogEvent value, $Res Function(SearchDialogEvent) then) =
      _$SearchDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDialogEventCopyWithImpl<$Res>
    implements $SearchDialogEventCopyWith<$Res> {
  _$SearchDialogEventCopyWithImpl(this._value, this._then);

  final SearchDialogEvent _value;
  // ignore: unused_field
  final $Res Function(SearchDialogEvent) _then;
}

/// @nodoc
abstract class _$$EvInitCopyWith<$Res> {
  factory _$$EvInitCopyWith(_$EvInit value, $Res Function(_$EvInit) then) =
      __$$EvInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvInitCopyWithImpl<$Res> extends _$SearchDialogEventCopyWithImpl<$Res>
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
    return 'SearchDialogEvent.init()';
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
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
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
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EvInit implements SearchDialogEvent {
  const factory EvInit() = _$EvInit;
}

/// @nodoc
abstract class _$$EvSearchDebounceCopyWith<$Res> {
  factory _$$EvSearchDebounceCopyWith(
          _$EvSearchDebounce value, $Res Function(_$EvSearchDebounce) then) =
      __$$EvSearchDebounceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvSearchDebounceCopyWithImpl<$Res>
    extends _$SearchDialogEventCopyWithImpl<$Res>
    implements _$$EvSearchDebounceCopyWith<$Res> {
  __$$EvSearchDebounceCopyWithImpl(
      _$EvSearchDebounce _value, $Res Function(_$EvSearchDebounce) _then)
      : super(_value, (v) => _then(v as _$EvSearchDebounce));

  @override
  _$EvSearchDebounce get _value => super._value as _$EvSearchDebounce;
}

/// @nodoc

class _$EvSearchDebounce implements EvSearchDebounce {
  const _$EvSearchDebounce();

  @override
  String toString() {
    return 'SearchDialogEvent.searchDebounce()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvSearchDebounce);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) {
    return searchDebounce();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) {
    return searchDebounce?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (searchDebounce != null) {
      return searchDebounce();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) {
    return searchDebounce(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) {
    return searchDebounce?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (searchDebounce != null) {
      return searchDebounce(this);
    }
    return orElse();
  }
}

abstract class EvSearchDebounce implements SearchDialogEvent {
  const factory EvSearchDebounce() = _$EvSearchDebounce;
}

/// @nodoc
abstract class _$$EvSearchCopyWith<$Res> {
  factory _$$EvSearchCopyWith(
          _$EvSearch value, $Res Function(_$EvSearch) then) =
      __$$EvSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EvSearchCopyWithImpl<$Res>
    extends _$SearchDialogEventCopyWithImpl<$Res>
    implements _$$EvSearchCopyWith<$Res> {
  __$$EvSearchCopyWithImpl(_$EvSearch _value, $Res Function(_$EvSearch) _then)
      : super(_value, (v) => _then(v as _$EvSearch));

  @override
  _$EvSearch get _value => super._value as _$EvSearch;
}

/// @nodoc

class _$EvSearch implements EvSearch {
  const _$EvSearch();

  @override
  String toString() {
    return 'SearchDialogEvent.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EvSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class EvSearch implements SearchDialogEvent {
  const factory EvSearch() = _$EvSearch;
}

/// @nodoc
abstract class _$$EvPressedItemCopyWith<$Res> {
  factory _$$EvPressedItemCopyWith(
          _$EvPressedItem value, $Res Function(_$EvPressedItem) then) =
      __$$EvPressedItemCopyWithImpl<$Res>;
  $Res call({RefCatalog catalog});
}

/// @nodoc
class __$$EvPressedItemCopyWithImpl<$Res>
    extends _$SearchDialogEventCopyWithImpl<$Res>
    implements _$$EvPressedItemCopyWith<$Res> {
  __$$EvPressedItemCopyWithImpl(
      _$EvPressedItem _value, $Res Function(_$EvPressedItem) _then)
      : super(_value, (v) => _then(v as _$EvPressedItem));

  @override
  _$EvPressedItem get _value => super._value as _$EvPressedItem;

  @override
  $Res call({
    Object? catalog = freezed,
  }) {
    return _then(_$EvPressedItem(
      catalog == freezed
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as RefCatalog,
    ));
  }
}

/// @nodoc

class _$EvPressedItem implements EvPressedItem {
  const _$EvPressedItem(this.catalog);

  @override
  final RefCatalog catalog;

  @override
  String toString() {
    return 'SearchDialogEvent.pressedItem(catalog: $catalog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvPressedItem &&
            const DeepCollectionEquality().equals(other.catalog, catalog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(catalog));

  @JsonKey(ignore: true)
  @override
  _$$EvPressedItemCopyWith<_$EvPressedItem> get copyWith =>
      __$$EvPressedItemCopyWithImpl<_$EvPressedItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) {
    return pressedItem(catalog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) {
    return pressedItem?.call(catalog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (pressedItem != null) {
      return pressedItem(catalog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) {
    return pressedItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) {
    return pressedItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (pressedItem != null) {
      return pressedItem(this);
    }
    return orElse();
  }
}

abstract class EvPressedItem implements SearchDialogEvent {
  const factory EvPressedItem(final RefCatalog catalog) = _$EvPressedItem;

  RefCatalog get catalog;
  @JsonKey(ignore: true)
  _$$EvPressedItemCopyWith<_$EvPressedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EvChangeSearchStrCopyWith<$Res> {
  factory _$$EvChangeSearchStrCopyWith(
          _$EvChangeSearchStr value, $Res Function(_$EvChangeSearchStr) then) =
      __$$EvChangeSearchStrCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class __$$EvChangeSearchStrCopyWithImpl<$Res>
    extends _$SearchDialogEventCopyWithImpl<$Res>
    implements _$$EvChangeSearchStrCopyWith<$Res> {
  __$$EvChangeSearchStrCopyWithImpl(
      _$EvChangeSearchStr _value, $Res Function(_$EvChangeSearchStr) _then)
      : super(_value, (v) => _then(v as _$EvChangeSearchStr));

  @override
  _$EvChangeSearchStr get _value => super._value as _$EvChangeSearchStr;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$EvChangeSearchStr(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EvChangeSearchStr implements EvChangeSearchStr {
  const _$EvChangeSearchStr(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchDialogEvent.changeSearchStr(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvChangeSearchStr &&
            const DeepCollectionEquality().equals(other.search, search));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(search));

  @JsonKey(ignore: true)
  @override
  _$$EvChangeSearchStrCopyWith<_$EvChangeSearchStr> get copyWith =>
      __$$EvChangeSearchStrCopyWithImpl<_$EvChangeSearchStr>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searchDebounce,
    required TResult Function() search,
    required TResult Function(RefCatalog catalog) pressedItem,
    required TResult Function(String search) changeSearchStr,
  }) {
    return changeSearchStr(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
  }) {
    return changeSearchStr?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searchDebounce,
    TResult Function()? search,
    TResult Function(RefCatalog catalog)? pressedItem,
    TResult Function(String search)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (changeSearchStr != null) {
      return changeSearchStr(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EvInit value) init,
    required TResult Function(EvSearchDebounce value) searchDebounce,
    required TResult Function(EvSearch value) search,
    required TResult Function(EvPressedItem value) pressedItem,
    required TResult Function(EvChangeSearchStr value) changeSearchStr,
  }) {
    return changeSearchStr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
  }) {
    return changeSearchStr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EvInit value)? init,
    TResult Function(EvSearchDebounce value)? searchDebounce,
    TResult Function(EvSearch value)? search,
    TResult Function(EvPressedItem value)? pressedItem,
    TResult Function(EvChangeSearchStr value)? changeSearchStr,
    required TResult orElse(),
  }) {
    if (changeSearchStr != null) {
      return changeSearchStr(this);
    }
    return orElse();
  }
}

abstract class EvChangeSearchStr implements SearchDialogEvent {
  const factory EvChangeSearchStr(final String search) = _$EvChangeSearchStr;

  String get search;
  @JsonKey(ignore: true)
  _$$EvChangeSearchStrCopyWith<_$EvChangeSearchStr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchDialogSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefCatalog? refCatalog) exit,
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
    TResult Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
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
abstract class $SearchDialogSRCopyWith<$Res> {
  factory $SearchDialogSRCopyWith(
          SearchDialogSR value, $Res Function(SearchDialogSR) then) =
      _$SearchDialogSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDialogSRCopyWithImpl<$Res>
    implements $SearchDialogSRCopyWith<$Res> {
  _$SearchDialogSRCopyWithImpl(this._value, this._then);

  final SearchDialogSR _value;
  // ignore: unused_field
  final $Res Function(SearchDialogSR) _then;
}

/// @nodoc
abstract class _$$_SrExitCopyWith<$Res> {
  factory _$$_SrExitCopyWith(_$_SrExit value, $Res Function(_$_SrExit) then) =
      __$$_SrExitCopyWithImpl<$Res>;
  $Res call({RefCatalog? refCatalog});
}

/// @nodoc
class __$$_SrExitCopyWithImpl<$Res> extends _$SearchDialogSRCopyWithImpl<$Res>
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
              as RefCatalog?,
    ));
  }
}

/// @nodoc

class _$_SrExit implements _SrExit {
  const _$_SrExit(this.refCatalog);

  @override
  final RefCatalog? refCatalog;

  @override
  String toString() {
    return 'SearchDialogSR.exit(refCatalog: $refCatalog)';
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
    required TResult Function(RefCatalog? refCatalog) exit,
    required TResult Function(String message) showSnackBar,
  }) {
    return exit(refCatalog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
    TResult Function(String message)? showSnackBar,
  }) {
    return exit?.call(refCatalog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
    TResult Function(String message)? showSnackBar,
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

abstract class _SrExit implements SearchDialogSR {
  const factory _SrExit(final RefCatalog? refCatalog) = _$_SrExit;

  RefCatalog? get refCatalog;
  @JsonKey(ignore: true)
  _$$_SrExitCopyWith<_$_SrExit> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SearchDialogSRCopyWithImpl<$Res>
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
    return 'SearchDialogSR.showSnackBar(message: $message)';
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
    required TResult Function(RefCatalog? refCatalog) exit,
    required TResult Function(String message) showSnackBar,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
    TResult Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefCatalog? refCatalog)? exit,
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

abstract class _SrShowSnackBar implements SearchDialogSR {
  const factory _SrShowSnackBar(final String message) = _$_SrShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$_SrShowSnackBarCopyWith<_$_SrShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}
