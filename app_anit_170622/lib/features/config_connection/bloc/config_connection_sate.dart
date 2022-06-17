part of 'config_connection_bloc.dart';

@immutable
abstract class ConfigConnectionBlocState {}

class InitState extends ConfigConnectionBlocState {}

class LoadingState extends ConfigConnectionBlocState {}

class ErrorState extends ConfigConnectionBlocState with StateIsCommand {
  final String message;
  ErrorState({
    required this.message,
  });
}

/// Сохранили данные
///
class IsSavedState extends ConfigConnectionBlocState with StateIsCommand {}

/// Ожидает заполнения и сохранения
///
class PendingState extends ConfigConnectionBlocState {
  final String? baseUrl;
  final String? login;
  final String? password;

  PendingState({
    this.baseUrl,
    this.login,
    this.password,
  });
}
