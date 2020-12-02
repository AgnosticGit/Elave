import 'package:elave/index.dart';
import 'package:elave/modules/auth/models/auth_form_model.dart';

class AuthFormController {
  void setSignInForm() {
    final authState = Get.put(AuthState());

    authState.form.currentForm = AuthFormState.signIn;
    authState.form.height = 200;
    authState.credentials.passwordOpacity = 1.0;
    authState.credentials.passwordHeight = null;
    authState.credentials.confirmPasswordOpacity = 0.0;
    authState.credentials.confirmPasswordHeight = 0.0;

    authState.cleanErrors();
    authState.update();
  }

  void setSignUpForm() {
    final authState = Get.put(AuthState());

    authState.form.currentForm = AuthFormState.signUp;
    authState.form.height = 250;
    authState.credentials.passwordOpacity = 1.0;
    authState.credentials.passwordHeight = null;
    authState.credentials.confirmPasswordOpacity = 1.0;
    authState.credentials.confirmPasswordHeight = null;
    
    authState.cleanErrors();
    authState.update();
  }

  void setRecoveryForm() {
    final authState = Get.put(AuthState());

    authState.form.currentForm = AuthFormState.recovery;
    authState.form.height = 140;
    authState.credentials.passwordOpacity = 0.0;
    authState.credentials.passwordHeight = 0.0;
    authState.credentials.confirmPasswordOpacity = 0.0;
    authState.credentials.confirmPasswordHeight = 0.0;

    authState.cleanErrors();
    authState.update();
  }
}
