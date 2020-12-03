import 'package:elave/index.dart';

class AuthCredentialsController {
  void onTappingEmail(String text) {
    AuthState.to.credentials.email = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkErrorsWithDebounce();
    }

    Get.put(AnimatedLogoController()).shuffle();
    AuthState.to.update();
  }

  void onTappingPassword(String text) {
    AuthState.to.credentials.password = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkPasswordErrors();
      checkConfirmPasswordErrors();
    }

    Get.put(AnimatedLogoController()).shuffle();
    AuthState.to.update();
  }

  void onTappingConfirmPassword(String text) {
    AuthState.to.credentials.confirmPassword = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkConfirmPasswordErrors();
    }

    Get.put(AnimatedLogoController()).shuffle();
    AuthState.to.update();
  }

  void checkErrorsWithDebounce() {
    if (AuthState.to.debounce != null) AuthState.to.debounce.cancel();

    AuthState.to.debounce = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == 1) {
        checkEmailErrors();
        timer.cancel();
      }
    });
  }

  void checkEmailErrors() async {
    final credentials = AuthState.to.credentials;

    await validateEmailOnServer();

    if (credentials.email != null) {
      AuthMarksController().showEmailMark();
      if (credentials.email.length > 0 && credentials.isEmailValid) {
        AuthState.to.emailTileController.showSecondSide();
      } else {
        AuthState.to.emailTileController.showFirstSide();
      }
    }
  }

  void checkPasswordErrors() {
    final password = AuthState.to.credentials.password;

    if (password != null) {
      if (ValidationService.isPasswordValid(password)) {
        AuthState.to.passwordTileController.showSecondSide();
      } else {
        AuthState.to.errors.password =
            'Password must be at least 6 characters.';
        AuthMarksController().showPasswordMark();
        AuthState.to.passwordTileController.showFirstSide();
      }
    }

    AuthState.to.update();
  }

  void checkConfirmPasswordErrors() {
    final password = AuthState.to.credentials.password;
    final confirmPassword = AuthState.to.credentials.confirmPassword;

    if (confirmPassword != null) {
      if (ValidationService.passwordsHasMatch(password, confirmPassword)) {
        AuthState.to.confirmPasswordTileController.showSecondSide();
      } else {
        AuthState.to.errors.confirmPassword = 'Passwords must be identical';
        AuthMarksController().showConfirmPasswordMark();
        AuthState.to.confirmPasswordTileController.showFirstSide();
      }
    }

    AuthState.to.update();
  }

  Future validateEmailOnServer() async {
    try {
      var response = await Api(route: '/auth/validation/email').post(body: {
        "email": AuthState.to.credentials.email ?? '',
      });
      AuthState.to.credentials.isEmailValid = response['data']['isEmailValid'];
    } catch (errors) {
      AuthState.to.credentials.isEmailValid = false;
      AuthState.to.errors = AuthErrorsModel.fromJson(errors);
    }
  }

  void onTapPassword() {
    if (AuthState.to.credentials.email != null &&
        AuthState.to.form.currentForm == AuthFormState.signUp) {
      AuthMarksController().showEmailMark();
    }
  }
}
