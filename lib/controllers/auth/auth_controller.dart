import 'package:elave/index.dart';

class AuthController extends GetxController {
  AuthModel authModel = AuthModel();

  void onTapping(AuthTextField textField, String text) {
    Get.put(LogoController()).shuffle();
    if (textField == AuthTextField.email) authModel.email = text;
    if (textField == AuthTextField.password) authModel.password = text;
    if (textField == AuthTextField.confirmPassword) {
      authModel.confirmPassword = text;
    }
  }

  void signIn() {
    Get.put(LogoController()).onLoadingStarted();
  }

  void signUp() async {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authFormController = Get.put(AuthFormController());

    if (!checkPasswordsMatches()) return;

    logoController.onLoadingStarted();
    try {
      final response = await Api(route: "auth/registration").post(
        body: {
          "email": authModel.email ?? "",
          "password": authModel.password ?? "",
        },
      );

      authState.cleanErrors();
      authFormController.setSignUpForm();
    } catch (errors) {
      authState.setErrors(AuthErrorsModel.fromJson(errors));
      authFormController.increaseHeightWhenErrors(authState.getErrorsCount());
    }
    logoController.onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoadingStarted();
  }

  bool checkPasswordsMatches() {
    final authFormController = Get.put(AuthFormController());
    final authState = Get.put(AuthState());

    if (authModel.password != authModel.confirmPassword ||
        authModel.password == null ||
        authModel.confirmPassword == null) {
      authState.setErrors(
        AuthErrorsModel(confirmPassword: ['Passwords do not match']),
      );
      authFormController.increaseHeightWhenErrors(1);
      return false;
    }

    return true;
  }

  void onTapSignIn() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.signIn) {
      signIn();
    } else {
      authFormController.setSignInForm();
    }
  }

  void onTapSignUp() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.signUp) {
      signUp();
    } else {
      authFormController.setSignUpForm();
    }
  }

  void onTapRecoveryAccount() {
    final authFormController = Get.put(AuthFormController());

    if (authFormController.form == AuthFormState.recovery) {
      recoveryAccount();
    } else {
      authFormController.setRecoveryForm();
    }
  }
}
