import 'package:elave/index.dart';
import 'package:elave/modules/auth/controllers/auth_credentials_controller.dart';
import 'package:elave/modules/auth/models/auth_form_model.dart';

class AuthFormController {
  void setSignInForm() {
    AuthState.to.form.currentForm = AuthFormState.signIn;
    AuthState.to.form.height = 200;
    AuthState.to.credentials.passwordOpacity = 1.0;
    AuthState.to.credentials.confirmPasswordOpacity = 0.0;
    AuthState.to.credentials.passwordVisibility = true;
    AuthState.to.credentials.confirmPasswordVisibility = false;

    AuthMarksController().hideAllMarks();
    AuthState.to.update();
  }

  void setSignUpForm() {
    AuthState.to.form.currentForm = AuthFormState.signUp;
    AuthState.to.form.height = 250;
    AuthState.to.credentials.passwordOpacity = 1.0;
    AuthState.to.credentials.confirmPasswordOpacity = 1.0;
    AuthState.to.credentials.passwordVisibility = true;
    AuthState.to.credentials.confirmPasswordVisibility = true;

    if (AuthState.to.credentials.email != null) {
      AuthMarksController().showEmailMark();
    }
    if (AuthState.to.credentials.password != null) {
      AuthMarksController().showPasswordMark();
    }
    if (AuthState.to.credentials.confirmPassword != null) {
      AuthMarksController().showConfirmPasswordMark();
    }

    AuthCredentialsController().checkEmailErrors();
    AuthCredentialsController().checkPasswordErrors();
    AuthCredentialsController().checkConfirmPasswordErrors();
    AuthState.to.update();
  }

  void setRecoveryForm() {
    AuthState.to.form.currentForm = AuthFormState.recovery;
    AuthState.to.form.height = 140;
    AuthState.to.credentials.passwordOpacity = 0.0;
    AuthState.to.credentials.confirmPasswordOpacity = 0.0;
    AuthState.to.credentials.passwordVisibility = false;
    AuthState.to.credentials.confirmPasswordVisibility = false;

    AuthMarksController().hideAllMarks();
    AuthState.to.update();
  }
}
