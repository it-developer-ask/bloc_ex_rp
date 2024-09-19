import 'package:bloc_ex/bloc/slider_and_switch/slider_and_switch_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderAndSwitch extends StatelessWidget {
  const SliderAndSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SliderAndSwitchBloc>(
          create: (BuildContext context) => SliderAndSwitchBloc(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Switch"),
                    BlocBuilder<SliderAndSwitchBloc, SliderAndSwitchState>(
                      buildWhen: (previous, current) =>
                          previous.isSwitchOn != current.isSwitchOn,
                      builder: (context, state) {
                        return CupertinoSwitch(
                          value: state.isSwitchOn,
                          onChanged: (value) {
                            context
                                .read<SliderAndSwitchBloc>()
                                .add(SwitchOnAndOff());
                          },
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                BlocBuilder<SliderAndSwitchBloc, SliderAndSwitchState>(
                  builder: (context, state) {
                    return Container(
                      height: 200,
                      color: Colors.red.withOpacity(state.sliderValue),
                    );
                  },
                ),
                const SizedBox(height: 20),
                BlocBuilder<SliderAndSwitchBloc, SliderAndSwitchState>(
                  buildWhen: (previous, current) =>
                      previous.sliderValue != current.sliderValue,
                  builder: (context, state) {
                    return CupertinoSlider(
                      value: state.sliderValue,
                      onChanged: (double value) {
                        context.read<SliderAndSwitchBloc>().add(
                              SliderEvent(sliderValue: value),
                            );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
