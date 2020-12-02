import 'package:elave/index.dart';

class AuthPasswordController {
  void onFocus() {
    AuthEmailController().onTapToAnotherField();
  }

  void onTappingPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.email = text;

    logoController.shuffle();
    authState.update();
  }

  void onTappingConfirmPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.confirmPassword = text;

    logoController.shuffle();
    authState.update();
  }
}
