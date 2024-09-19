part of 'slider_and_switch_bloc.dart';

abstract class SliderAndSwitchEvent extends Equatable {
  const SliderAndSwitchEvent();
  @override
  List<Object?> get props => [];
}

class SwitchOnAndOff extends SliderAndSwitchEvent {}

class SliderEvent extends SliderAndSwitchEvent {
  double sliderValue;
  SliderEvent({required this.sliderValue});
  @override
  List<Object?> get props => [sliderValue];
}
