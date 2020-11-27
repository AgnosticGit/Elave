import 'package:elave/index.dart';
import 'package:elave/models/auth_model.dart';

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

    logoController.onLoadingStarted();

    try {
      final response = await Api(route: "auth/registration").post(
        body: {
          "email": authModel.email,
          "password": authModel.password,
        },
      );
    } catch (errors) {
      print(errors);
    }

    logoController.onLoadingFinished();
  }

  void recoveryAccount() {
    Get.put(LogoController()).onLoadingStarted();
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
