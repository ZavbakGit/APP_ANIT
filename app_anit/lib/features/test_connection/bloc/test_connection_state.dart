part of 'test_connection_bloc.dart';

@immutable
abstract class TestConnectionBlocState {}

class InitState extends TestConnectionBlocState {}

class LoadingState extends TestConnectionBlocState {}

class ErrorState extends TestConnectionBlocState with StateIsCommand {
  final String message;
  ErrorState({
    required this.message,
  });
}

/// Сохранили данные
///
class IsSavedState extends TestConnectionBlocState with StateIsCommand {}

/// Ожидает заполнения и сохранения
///
class PendingState extends TestConnectionBlocState {
  final String? messageError;

  PendingState({
    this.messageError,
  });
}
