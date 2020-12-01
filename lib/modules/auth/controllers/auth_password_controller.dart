import 'package:elave/index.dart';

class AuthPasswordController extends GetxController {
  void onFocus() {
    AuthEmailController().onTapToAnotherField();
  }

  void onTappingPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authModel = AuthCredentialsModel(password: text);

    authState.mutateAuthCredentialsModel(authModel);
    logoController.shuffle();
  }

  void onTappingConfirmPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authModel = AuthCredentialsModel(confirmPassword: text);

    authState.mutateAuthCredentialsModel(authModel);
    logoController.shuffle();
  }

  
}
