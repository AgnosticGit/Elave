import 'package:elave/index.dart';

class AuthPasswordController {
  void onFocus() {
    AuthEmailController().onTapToAnotherField();
  }

  void onTappingPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.password = text;

    if (authState.form.currentForm == AuthFormState.signUp) {
      checkPasswordErrors();
      checkConfirmPasswordErrors();
    }

    logoController.shuffle();
    authState.update();
  }

  void onTappingConfirmPassword(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.confirmPassword = text;

    if (authState.form.currentForm == AuthFormState.signUp) {
      checkConfirmPasswordErrors();
    }

    logoController.shuffle();
    authState.update();
  }

  void onTapConfirmPassword() {
    checkPasswordErrors();
  }

  void checkPasswordErrors() {
    final authState = Get.put(AuthState());
    final password = authState.credentials.password;

    if (password != null) {
      if (password.length < 6) {
        authState.errors.password = 'Password must be at least 6 characters.';
        showPasswordMark();
        authState.passwordTileController.showFirstSide();
      } else {
        authState.passwordTileController.showSecondSide();
      }
    }

    authState.update();
  }

  void checkConfirmPasswordErrors() {
    final authState = Get.put(AuthState());
    final password = authState.credentials.password;
    final confirmPassword = authState.credentials.confirmPassword;

    if (confirmPassword != null) {
      if (password != confirmPassword || confirmPassword.length < 6) {
        authState.errors.confirmPassword = 'Passwords must be identical';
        showConfirmPasswordMark();
        authState.confirmPasswordTileController.showFirstSide();
      } else {
        authState.confirmPasswordTileController.showSecondSide();
      }
    }

    authState.update();
  }

  void showPasswordMark() {
    final authState = Get.put(AuthState());
    authState.credentials.passwordMarkOpacity = 1.0;
    authState.update();
  }

  void hidePasswordMark() {
    final authState = Get.put(AuthState());
    authState.credentials.passwordMarkOpacity = 0.0;
    authState.update();
  }

  void showConfirmPasswordMark() {
    final authState = Get.put(AuthState());
    authState.credentials.confirmPasswordMarkOpacity = 1.0;
    authState.update();
  }

  void hideConfirmPasswordMark() {
    final authState = Get.put(AuthState());
    authState.credentials.confirmPasswordMarkOpacity = 0.0;
    authState.update();
  }
}
