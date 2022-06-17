part of 'config_connection_bloc.dart';

@immutable
abstract class ConfigConnectionBlocEvent {}

class StartEvent extends ConfigConnectionBlocEvent {}

class LoadEvent extends ConfigConnectionBlocEvent {}

class SaveEvent extends ConfigConnectionBlocEvent {
  final String baseUrl;
  final String login;
  final String password;

  SaveEvent({
    required this.baseUrl,
    required this.login,
    required this.password,
  });
}
