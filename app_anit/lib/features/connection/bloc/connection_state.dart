part of 'connection_bloc.dart';

enum ConnectionStatus { initial, loading, success, failure }

class ConnectionXState extends Equatable {
  final ConnectionStatus status;
  final String errorMessage;

  const ConnectionXState._({
    this.status = ConnectionStatus.initial,
    this.errorMessage = '',
  });

  const ConnectionXState.initial() : this._();
  const ConnectionXState.loading() : this._(status: ConnectionStatus.loading);

  const ConnectionXState.failure(String errorMessage)
      : this._(status: ConnectionStatus.failure, errorMessage: errorMessage);

  const ConnectionXState.success() : this._(status: ConnectionStatus.success);

  @override
  List<Object> get props => [status, errorMessage];
}
