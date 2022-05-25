part of 'config_connection_bloc.dart';

@immutable
abstract class ConfigConnectionBlocEvent {}

class StartEvent extends ConfigConnectionBlocEvent {
  final bool isTest;
  StartEvent({
    this.isTest = false,
  });
}

class LoadEvent extends ConfigConnectionBlocEvent {}

class SaveEvent extends ConfigConnectionBlocEvent {}
