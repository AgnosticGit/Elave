import 'package:elave/index.dart';

class AuthController {
  void signIn() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void signUp() async {
    Get.put(LogoController()).onLoadingStarted();
    await ApiService().post(
      route: '/auth/validation/email',
      onSuccess: (json) {
        AuthState.to.cleanErrors();
        AuthFormController().setSignUpForm();
      },
      onError: (json) {
        AuthState.to.errors = AuthErrorsModel.fromJson(json);
        AuthState.to.update();
      },
      onNetworkError: () {
        print('No Internet Connection');
      },
    );
    Get.put(LogoController()).onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void onTapSignIn() {
    final authFormController = AuthFormController();

    if (AuthState.to.form.currentForm == AuthFormState.signIn) {
      signIn();
    } else {
      authFormController.setSignInForm();
    }
  }

  void onTapSignUp() {
    final authFormController = AuthFormController();

    if (AuthState.to.form.currentForm == AuthFormState.signUp) {
      signUp();
    } else {
      authFormController.setSignUpForm();
    }
  }

  void onTapRecoveryAccount() {
    final authFormController = AuthFormController();

    if (AuthState.to.form.currentForm == AuthFormState.recovery) {
      recoveryAccount();
    } else {
      authFormController.setRecoveryForm();
    }
  }
}
