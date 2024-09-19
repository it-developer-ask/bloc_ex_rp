import 'package:image_picker/image_picker.dart';

class ImagePickerUtility {
  final ImagePicker _picker = ImagePicker();
  Future<XFile?> cameraImageCapture() async {
    return await _picker.pickImage(source: ImageSource.camera);
  }

  Future<XFile?> galleryImageCapture() async {
    return await _picker.pickImage(source: ImageSource.gallery);
  }
}
