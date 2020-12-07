import 'package:elave/index.dart';

class AuthCredentialsController {
  void onTappingEmail(String text) {
    AuthState.to.credentialsData.email = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkErrorsWithDebounce();
    }

    Get.put(LogoController()).shuffle();
    AuthState.to.update();
  }

  void onTappingPassword(String text) {
    AuthState.to.credentialsData.password = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkPasswordErrors();
      checkConfirmPasswordErrors();
    }

    Get.put(LogoController()).shuffle();
    AuthState.to.update();
  }

  void onTappingConfirmPassword(String text) {
    AuthState.to.credentialsData.confirmPassword = text;

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      checkConfirmPasswordErrors();
    }

    Get.put(LogoController()).shuffle();
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
    final credentials = AuthState.to.credentialsData;

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
    final password = AuthState.to.credentialsData.password;

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
    final password = AuthState.to.credentialsData.password;
    final confirmPassword = AuthState.to.credentialsData.confirmPassword;

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
    await ApiService().post(
      route: '/auth/validation/email',
      onSuccess: (json) {
        AuthState.to.credentialsData.isEmailValid =
            json['data']['isEmailValid'];
      },
      onError: (json) {
        AuthState.to.credentialsData.isEmailValid = false;
        AuthState.to.errors = AuthErrorsModel.fromJson(json);
      },
      onNetworkError: () {
        print('No Internet Connection');
      },
    );
  }

  void onTapPassword() {
    if (AuthState.to.credentialsData.email != null &&
        AuthState.to.form.currentForm == AuthFormState.signUp) {
      AuthMarksController().showEmailMark();
    }
  }
}
