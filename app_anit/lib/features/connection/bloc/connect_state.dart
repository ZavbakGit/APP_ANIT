part of 'connect_bloc.dart';

abstract class ConnectState {
  bool isCommand;
  ConnectState({
    required this.isCommand,
  });
}

class ShowDialogState extends ConnectState {
  final String title;
  final String context;

  ShowDialogState({
    super.isCommand = true,
    required this.title,
    required this.context,
  });
}

class GoNextPageState extends ConnectState {
  GoNextPageState({
    super.isCommand = true,
  });
}

enum ConnectionStatus { initial, loading, success, failure }

/// Основное состояние
///
class BaseState extends ConnectState with EquatableMixin {
  final ConnectionStatus status;
  final String errorMessage;

  BaseState._({
    super.isCommand = false,
    this.status = ConnectionStatus.initial,
    this.errorMessage = '',
  });

  BaseState.initial() : this._();
  BaseState.loading() : this._(status: ConnectionStatus.loading);

  BaseState.failure(String errorMessage)
      : this._(status: ConnectionStatus.failure, errorMessage: errorMessage);

  BaseState.success() : this._(status: ConnectionStatus.success);

  @override
  List<Object> get props => [status, errorMessage];
}
