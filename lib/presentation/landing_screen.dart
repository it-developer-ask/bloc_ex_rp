import 'package:flutter/material.dart';
import 'slider_and_switch.dart';
import 'counter_screen.dart';
import 'image_picker.dart';
import 'data_call.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LandingScreenButton(
                title: "Counter Example",
                toPush: CounterScreen(),
              ),
              LandingScreenButton(
                title: "Slider and Switch",
                toPush: SliderAndSwitch(),
              ),
              LandingScreenButton(
                title: "Pick a Image",
                toPush: ImagePicker(),
              ),
              LandingScreenButton(
                title: "Data Call",
                toPush: DataCall(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LandingScreenButton extends StatelessWidget {
  final Widget toPush;
  final String title;
  const LandingScreenButton(
      {super.key, required this.toPush, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => toPush,
            ),
          );
        },
        child: Text(
          title,
        ),
      ),
    );
  }
}
