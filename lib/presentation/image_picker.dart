import 'package:bloc_ex/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_ex/utils/image_picker_utility.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ImagePicker extends StatelessWidget {
  const ImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagePickerBloc(ImagePickerUtility()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(),
                BlocBuilder<ImagePickerBloc, ImagePickerState>(
                  builder: (context, state) {
                    if (state.file == null) {
                      return Container();
                    } else {
                      return Image.file(File(state.file!.path.toString()));
                    }
                  },
                ),
                const SizedBox(height: 20),
                BlocBuilder<ImagePickerBloc, ImagePickerState>(
                  builder: (context, state) {
                    return MaterialButton(
                      onPressed: () {
                        context.read<ImagePickerBloc>().add(CameraCapture());
                      },
                      child: const Text("Pick Image From Camera"),
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<ImagePickerBloc, ImagePickerState>(
                  builder: (context, state) {
                    return MaterialButton(
                      onPressed: () {
                        context.read<ImagePickerBloc>().add(GalleryCapture());
                      },
                      child: const Text("Pick Image From Gallery"),
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
