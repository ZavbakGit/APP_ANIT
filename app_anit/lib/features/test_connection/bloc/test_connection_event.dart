part of 'test_connection_bloc.dart';

@immutable
abstract class TestConnectionEvent {}

class StartEvent extends TestConnectionEvent {}

class EntranceEvent extends TestConnectionEvent {}
