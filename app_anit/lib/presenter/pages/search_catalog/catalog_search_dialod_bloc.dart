import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/repositories/repository.dart';
import 'catalog_search_dialod_models.dart';

class CatalogSearchDialogBloc
    extends SrBloc<SearchDialogEvent, SearchDialogState, SearchDialogSR> {
  CatalogSearchDialogBloc({required this.repository, required this.type})
      : super(const SearchDialogState.empty()) {
    on<EvInit>(_init);
    on<EvChangeSearchStr>(_changeSearchStr);
    on<EvSearchDebounce>(_searchDebounce);
    on<EvSearch>(_search);
    on<EvPressedItem>(_pressedCatalog);
  }

  late String? searchStr;

  final Repository repository;
  final String type;

  Timer? _debounce;

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }

  FutureOr<void> _init(EvInit event, Emitter<SearchDialogState> emit) async {
    emit(const SearchDialogState.data(
        list: [], isLoadingList: false, searchStr: ''));
  }

  FutureOr<void> _changeSearchStr(
    EvChangeSearchStr event,
    Emitter<SearchDialogState> emit,
  ) {
    searchStr = event.search;
    add(const SearchDialogEvent.searchDebounce());
  }

  FutureOr<void> _searchDebounce(
    EvSearchDebounce event,
    Emitter<SearchDialogState> emit,
  ) async {
    if (searchStr != null && searchStr!.length > 2) {
      if (_debounce?.isActive ?? false) _debounce?.cancel();

      _debounce = Timer(const Duration(milliseconds: 500), () async {
        add(const SearchDialogEvent.search());
      });
    } else {
      emit(SearchDialogState.data(
          list: [], isLoadingList: false, searchStr: searchStr ?? ''));
    }
  }

  FutureOr<void> _search(
      EvSearch event, Emitter<SearchDialogState> emit) async {
    emit(SearchDialogState.data(
        list: [], isLoadingList: true, searchStr: searchStr ?? ''));

    final either = await repository.catalogSearch(
        type: type, search: searchStr!, offset: 0, count: 30);

    either.fold(
      (fail) async {
        emit(SearchDialogState.error(message: fail.error ?? ''));
      },
      (result) async {
        emit(SearchDialogState.data(
            list: result, isLoadingList: false, searchStr: searchStr ?? ''));
      },
    );
  }

  FutureOr<void> _pressedCatalog(
    EvPressedItem event,
    Emitter<SearchDialogState> emit,
  ) {
    addSr(SearchDialogSR.exit(event.catalog));
  }
}
