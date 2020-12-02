import 'package:elave/index.dart';
import 'package:elave/modules/auth/models/auth_form_model.dart';

class AuthFormController {
  void setSignInForm() {
    final authState = Get.put(AuthState());

    authState.form.currentForm = AuthFormState.signIn;
    authState.form.height = 200;
    authState.credentials.passwordOpacity = 1.0;
    authState.credentials.confirmPasswordOpacity = 0.0;
    authState.credentials.passwordVisibility = true;
    authState.credentials.confirmPasswordVisibility = false;
    authState.credentials.emailMarkOpacity = 0.0;
    authState.credentials.passwordMarkOpacity = 0.0;
    authState.credentials.confirmPasswordMarkOpacity = 0.0;

    authState.cleanErrors();
    authState.update();
  }

  void setSignUpForm() {
    final authState = Get.put(AuthState());
    final credentials = authState.credentials;

    authState.form.currentForm = AuthFormState.signUp;
    authState.form.height = 250;
    authState.credentials.passwordOpacity = 1.0;
    authState.credentials.confirmPasswordOpacity = 1.0;
    authState.credentials.passwordVisibility = true;
    authState.credentials.confirmPasswordVisibility = true;

    if (credentials.email != null) {
      authState.credentials.emailMarkOpacity = 1.0;
    }

    if (credentials.password != null) {
      authState.credentials.passwordMarkOpacity = 1.0;
    }

    if (credentials.confirmPassword != null) {
      authState.credentials.confirmPasswordMarkOpacity = 1.0;
    }
    
    AuthEmailController().checkErrors();
    AuthPasswordController().checkPasswordErrors();
    AuthPasswordController().checkConfirmPasswordErrors();
    authState.cleanErrors();
    authState.update();
  }

  void setRecoveryForm() {
    final authState = Get.put(AuthState());

    authState.form.currentForm = AuthFormState.recovery;
    authState.form.height = 150;
    authState.credentials.passwordOpacity = 0.0;
    authState.credentials.confirmPasswordOpacity = 0.0;
    authState.credentials.passwordVisibility = false;
    authState.credentials.confirmPasswordVisibility = false;
    authState.credentials.emailMarkOpacity = 0.0;
    authState.credentials.passwordMarkOpacity = 0.0;
    authState.credentials.confirmPasswordMarkOpacity = 0.0;

    authState.cleanErrors();
    authState.update();
  }
}
