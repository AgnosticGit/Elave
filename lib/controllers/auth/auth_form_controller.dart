import 'package:elave/index.dart';
import 'package:elave/models/auth/auth_form_model.dart';

class AuthFormController extends GetxController {
  AuthFormState form = AuthFormState.signIn;
  double formHeight = 200.0;

  AuthTextFieldModel passwordState =
      AuthTextFieldModel(opacity: 1.0, height: null);
  AuthTextFieldModel confirmPasswordState =
      AuthTextFieldModel(opacity: 0.0, height: 0);

  void selectSignInForm() {
    form = AuthFormState.signIn;
    formHeight = 200.0;
    passwordState = AuthTextFieldModel(opacity: 1.0, height: null);
    confirmPasswordState = AuthTextFieldModel(opacity: 0.0, height: 0.0);
    update();
  }

  void selectSignUpForm() {
    form = AuthFormState.signUp;
    formHeight = 250.0;
    passwordState = AuthTextFieldModel(opacity: 1.0, height: null);
    confirmPasswordState = AuthTextFieldModel(opacity: 1.0, height: null);
    update();
  }

  void selectRecoveryForm() {
    form = AuthFormState.recovery;
    formHeight = 140.0;
    passwordState = AuthTextFieldModel(opacity: 0.0, height: 0.0);
    confirmPasswordState = AuthTextFieldModel(opacity: 0.0, height: 0.0);

    update();
  }
}
