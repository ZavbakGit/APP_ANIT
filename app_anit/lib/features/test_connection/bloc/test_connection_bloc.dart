import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_connection_event.dart';
part 'test_connection_state.dart';

class TestConnectionBloc
    extends Bloc<TestConnectionEvent, TestConnectionBlocState> {
  TestConnectionBloc() : super(TestConnectionInitial()) {
    on<TestConnectionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
