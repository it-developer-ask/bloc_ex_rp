import 'package:bloc_ex/utils/image_picker_utility.dart';
import 'package:image_picker/image_picker.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtility imagePickerUtility;

  ImagePickerBloc(this.imagePickerUtility) : super(const ImagePickerState()) {
    on<CameraCapture>((event, emit) async {
      XFile? file = await imagePickerUtility.cameraImageCapture();
      emit(state.copyWith(file: file));
    });
    on<GalleryCapture>((event, emit) async {
      XFile? file = await imagePickerUtility.galleryImageCapture();
      emit(state.copyWith(file: file));
    });
  }
}
