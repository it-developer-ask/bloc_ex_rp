import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
part 'slider_and_switch_event.dart';
part 'slider_and_switch_state.dart';

class SliderAndSwitchBloc
    extends Bloc<SliderAndSwitchEvent, SliderAndSwitchState> {
  SliderAndSwitchBloc() : super(SliderAndSwitchState()) {
    on<SwitchOnAndOff>((event, emit) {
      emit(state.copyWith(isSwitchOn: !state.isSwitchOn));
    });
    on<SliderEvent>((event, emit) {
      emit(state.copyWith(sliderValue: event.sliderValue));
    });
  }
}
