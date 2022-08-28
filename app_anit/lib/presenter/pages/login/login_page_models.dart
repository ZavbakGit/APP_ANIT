import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_page_models.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  //MainPageStateData get data => this as MainPageStateData;

  const LoginPageState._();

  const factory LoginPageState.data({
    required String login,
    required String password,
    required bool isLoading,
  }) = _StData;

  const factory LoginPageState.empty() = _StEmpty;
}

@freezed
class LoginPageEvent with _$LoginPageEvent {
  const factory LoginPageEvent.init() = EvInit;
  const factory LoginPageEvent.login({
    required String login,
    required String password,
  }) = EvLogin;
}

@freezed
class LoginPageSR with _$LoginPageSR {
  const factory LoginPageSR.exit() = _SrExit;
  const factory LoginPageSR.showSnackBar(String message) = _SrShowSnackBar;
}
