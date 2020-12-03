import 'package:elave/index.dart';

class AuthController {
  void signIn() {
    Get.put(AnimatedLogoController()).onLoadingStarted();
  }

  void signUp() async {
    Get.put(AnimatedLogoController()).onLoadingStarted();

    try {
      final response = await Api(route: "/auth/registration").post(
        body: {
          "email": AuthState.to.credentials.email,
          "password": AuthState.to.credentials.password,
        },
      );
      print(response);
      AuthState.to.cleanErrors();
      AuthFormController().setSignUpForm();
    } catch (errors) {
      print(errors);
      AuthState.to.errors = AuthErrorsModel.fromJson(errors);
      AuthState.to.update();
    }
    
    Get.put(AnimatedLogoController()).onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(AnimatedLogoController()).onLoadingStarted();
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
