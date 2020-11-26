import 'package:elave/index.dart';
import 'package:elave/models/auth_form_model.dart';

class AuthFormController extends GetxController {
  AuthFormState form = AuthFormState.signIn;
  double formHeight = 200.0;

  AuthFormModel passwordState = AuthFormModel(opacity: 1.0, height: null);
  AuthFormModel confirmPasswordState = AuthFormModel(opacity: 0.0, height: 0);

  void selectSignInForm() {
    form = AuthFormState.signIn;
    formHeight = 200.0;
    passwordState = AuthFormModel(opacity: 1.0, height: null);
    confirmPasswordState = AuthFormModel(opacity: 0.0, height: 0.0);
    update();
  }

  void selectSignUpForm() {
    form = AuthFormState.signUp;
    formHeight = 250.0;
    passwordState = AuthFormModel(opacity: 1.0, height: null);
    confirmPasswordState = AuthFormModel(opacity: 1.0, height: null);
    update();
  }

  void selectRecoveryForm() {
    form = AuthFormState.recovery;
    formHeight = 140.0;
    passwordState = AuthFormModel(opacity: 0.0, height: 0.0);
    confirmPasswordState = AuthFormModel(opacity: 0.0, height: 0.0);

    update();
  }
}
