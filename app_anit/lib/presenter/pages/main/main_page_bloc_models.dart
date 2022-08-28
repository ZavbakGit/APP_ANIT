import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_page_bloc_models.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  //MainPageStateData get data => this as MainPageStateData;

  const MainPageState._();

  const factory MainPageState.data({
    required String user,
  }) = _StData;

  const factory MainPageState.empty() = _StEmpty;
}

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.init() = EvInit;
  const factory MainPageEvent.exit() = EvExit;
}

@freezed
class MainPageSR with _$MainPageSR {
  const factory MainPageSR.showSnackbar({required String text}) =
      _EvShowSnackbar;
}
