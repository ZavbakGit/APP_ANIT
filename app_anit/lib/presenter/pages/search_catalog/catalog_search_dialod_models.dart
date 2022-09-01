import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_search_dialod_models.freezed.dart';

@freezed
class SearchDialogState with _$SearchDialogState {
  const SearchDialogState._();

  const factory SearchDialogState.data({
    required final List<RefCatalog> list,
    required final bool isLoadingList,
    required final String searchStr,
  }) = _StData;

  const factory SearchDialogState.empty() = _StEmpty;
  const factory SearchDialogState.error({
    required String message,
  }) = _StError;
}

@freezed
class SearchDialogEvent with _$SearchDialogEvent {
  const factory SearchDialogEvent.init() = EvInit;
  const factory SearchDialogEvent.searchDebounce() = EvSearchDebounce;
  const factory SearchDialogEvent.search() = EvSearch;
  const factory SearchDialogEvent.pressedCatalog(RefCatalog catalog) =
      EvPressedCatalog;
  const factory SearchDialogEvent.changeSearchStr(String search) =
      EvChangeSearchStr;
}

@freezed
class SearchDialogSR with _$SearchDialogSR {
  const factory SearchDialogSR.exit(RefCatalog? refCatalog) = _SrExit;
  const factory SearchDialogSR.showSnackBar(String message) = _SrShowSnackBar;
}
