import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/repository.dart';

class SearchDialogCubit extends Cubit<SearchDialogState> {
  final Repository repository;
  final String type;

  SearchDialogCubit({
    required this.repository,
    required this.type,
  }) : super(SearchDialogState());

  void search(String search) async {
    if (search.length > 2) {
      emit(SearchDialogState(isLoading: true));

      final either = await repository.catalogSearch(
          type: type, search: search, offset: 0, count: 100);

      either.fold((fail) {
        emit(SearchDialogState(isLoading: false, error: 'Что пошло не так'));
      }, (list) {
        emit(SearchDialogState(isLoading: false, list: list));
      });
    } else {
      emit(SearchDialogState(isLoading: false, list: []));
    }
  }
}

class SearchDialogState {
  final bool isLoading;
  final String? error;
  final List<RefCatalog>? list;

  SearchDialogState({
    this.isLoading = false,
    this.error,
    this.list,
  });

  SearchDialogState copyWith({
    bool? isLoading,
    String? error,
    List<RefCatalog>? list,
  }) {
    return SearchDialogState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      list: list ?? this.list,
    );
  }

  @override
  String toString() {
    return 'SearchDialogState(isLoading: $isLoading, error: $error, list: $list)';
  }
}
