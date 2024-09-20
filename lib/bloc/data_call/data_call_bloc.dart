import 'package:bloc/bloc.dart';
part 'data_call_event.dart';
part 'data_call_state.dart';

class DataCallBloc extends Bloc<DataCallEvent, DataCallState> {
  DataCallBloc() : super(DataCallInitial()) {
    on<DataCallEvent>((event, emit) {
    });
  }
}
