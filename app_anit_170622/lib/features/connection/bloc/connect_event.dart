part of 'connect_bloc.dart';

@immutable
abstract class ConnectEvent extends Equatable {}

class InitEvent extends ConnectEvent {
  final bool isAutoStart;

  InitEvent({
    required this.isAutoStart,
  });
  @override
  List<Object?> get props => [isAutoStart];
}

class ConnectionEvent extends ConnectEvent {
  @override
  List<Object?> get props => [];
}
