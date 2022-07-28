import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_page_bloc_models.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  MainPageStateData get data => this as MainPageStateData;

  const MainPageState._();

  const factory MainPageState.data({
    required String user,
  }) = MainPageStateData;

  const factory MainPageState.empty() = _Empty;
}

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.init() = MainPageEventInit;
  const factory MainPageEvent.exit() = MainPageEventExit;
}

@freezed
class MainPageSR with _$MainPageSR {
  const factory MainPageSR.showSnackbar({required String text}) = _ShowSnackbar;
}
