import "package:equatable/equatable.dart";
import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });
    on<DecrementCounter>((event, emit) {
      if (state.counter > 0) {
        emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
