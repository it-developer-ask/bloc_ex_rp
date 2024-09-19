part of 'slider_and_switch_bloc.dart';

class SliderAndSwitchState extends Equatable {
  bool isSwitchOn;
  double sliderValue;

  SliderAndSwitchState({
    this.isSwitchOn = false,
    this.sliderValue = 0.0,
  });

  SliderAndSwitchState copyWith({
    bool? isSwitchOn,
    double? sliderValue,
  }) {
    return SliderAndSwitchState(
      isSwitchOn: isSwitchOn ?? this.isSwitchOn,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }

  @override
  List<Object?> get props => [
        isSwitchOn,
        sliderValue,
      ];
}
