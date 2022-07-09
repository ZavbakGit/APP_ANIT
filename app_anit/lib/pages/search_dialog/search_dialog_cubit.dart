import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchDialogCubit extends Cubit<SearchDialogState> {
  SearchDialogCubit() : super(SearchDialogState());

  void search(String search) async {
    emit(SearchDialogState(isLoading: true, search: search));
    await Future.delayed(const Duration(seconds: 1));
    emit(SearchDialogState(search: search));
  }
}

class SearchDialogState {
  final bool isLoading;
  final String error;
  final String? search;
  final List<RefCatalog>? list;

  SearchDialogState({
    this.isLoading = false,
    this.error = '',
    this.list,
    this.search,
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
    return 'SearchDialogState(isLoading: $isLoading, error: $error, search: $search, list: $list)';
  }
}
