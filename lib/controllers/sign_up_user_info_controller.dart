import 'package:elave/index.dart';

class SignUpUserInfoController extends GetxController {
  void openGallery() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
  }

  void openCamera() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
  }

  openChooseWindow() {
    Get.to(ImagePickerWindow(), opaque: false);
  }
}
