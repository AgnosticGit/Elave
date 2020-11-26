import 'package:elave/index.dart';

class AuthController extends GetxController {
  void signIn() {
    Get.put(LogoController()).onLoading();
  }

  void signUp() {
    Get.put(LogoController()).onLoading();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoading();
  }

  void onTapSignIn() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.signIn) {
      signIn();
    } else {
      authFormController.selectSignInForm();
    }
  }

  void onTapSignUp() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.signUp) {
      signUp();
    } else {
      authFormController.selectSignUpForm();
    }
  }

  void onTapRecoveryAccount() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.recovery) {
      recoveryAccount();
    } else {
      authFormController.selectRecoveryForm();
    }
  }
}
