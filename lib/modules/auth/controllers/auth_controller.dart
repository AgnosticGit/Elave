import 'package:elave/index.dart';

class AuthController {
  void signIn() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void signUp() async {
    final authState = Get.put(AuthState());
    final logoController = Get.put(LogoController());
    final authFormController = Get.put(AuthFormController());

    logoController.onLoadingStarted();
    try {
      final response = await Api(route: "/auth/registration").post(
        body: {
          "email": authState.credentials.email,
          "password": authState.credentials.password,
        },
      );
      print(response);
      authState.cleanErrors();
      authFormController.setSignUpForm();
    } catch (errors) {
      print(errors);
      authState.errors = AuthErrorsModel.fromJson(errors);
      authState.update();
    }
    logoController.onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void onTapSignIn() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.form.currentForm == AuthFormState.signIn) {
      signIn();
    } else {
      authFormController.setSignInForm();
    }
  }

  void onTapSignUp() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.form.currentForm == AuthFormState.signUp) {
      signUp();
    } else {
      authFormController.setSignUpForm();
    }
  }

  void onTapRecoveryAccount() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.form.currentForm == AuthFormState.recovery) {
      recoveryAccount();
    } else {
      authFormController.setRecoveryForm();
    }
  }
}
