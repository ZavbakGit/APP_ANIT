part of 'connection_bloc.dart';

@immutable
abstract class ConnectionEvent extends Equatable {}

class InitEvent extends ConnectionEvent {
  final bool isAutoStart;

  InitEvent({
    required this.isAutoStart,
  });
  @override
  List<Object?> get props => [isAutoStart];
}

class ConnectEvent extends ConnectionEvent {
  @override
  List<Object?> get props => [];
}
