import 'package:elave/index.dart';

class AuthController {
  void signIn() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void signUp() async {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authFormController = Get.put(AuthFormController());

    logoController.onLoadingStarted();
    try {
      final response = await Api(route: "auth/registration").post(
        body: {
          "email": authState.authCredentialsModel.email,
          "password": authState.authCredentialsModel.password,
        },
      );
      print(response);
      authState.cleanErrors();
      authFormController.setSignUpForm();
    } catch (errors) {
      print(errors);
      authState.mutateErrors(AuthErrorsModel.fromJson(errors));
    }
    logoController.onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void onTapSignIn() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.formModel.currentForm == AuthFormState.signIn) {
      signIn();
    } else {
      authFormController.setSignInForm();
    }
  }

  void onTapSignUp() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.formModel.currentForm == AuthFormState.signUp) {
      signUp();
    } else {
      authFormController.setSignUpForm();
    }
  }

  void onTapRecoveryAccount() {
    final authState = Get.put(AuthState());
    final authFormController = AuthFormController();

    if (authState.formModel.currentForm == AuthFormState.recovery) {
      recoveryAccount();
    } else {
      authFormController.setRecoveryForm();
    }
  }
}
