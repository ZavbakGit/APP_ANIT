part of 'test_connection_bloc.dart';

@immutable
abstract class TestConnectionBlocState {}

class TestConnectionInitial extends TestConnectionBlocState {}

class TestConnectionState extends TestConnectionBlocState {
  final bool isLoading;
  final String? message;
  TestConnectionState({
    required this.isLoading,
    this.message,
  });
}
