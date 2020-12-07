import 'package:elave/index.dart';
import 'package:elave/modules/auth/controllers/auth_credentials_controller.dart';
import 'package:elave/modules/auth/models/auth_form_model.dart';

class AuthFormController {
  void setSignInForm() {
    AuthState.to.form.currentForm = AuthFormState.signIn;
    AuthState.to.form.height = 200;
    AuthState.to.credentialsView.passwordOpacity = 1.0;
    AuthState.to.credentialsView.confirmPasswordOpacity = 0.0;
    AuthState.to.credentialsView.passwordVisibility = true;
    AuthState.to.credentialsView.confirmPasswordVisibility = false;

    AuthMarksController().hideAllMarks();
    AuthState.to.update();
  }

  void setSignUpForm() {
    AuthState.to.form.currentForm = AuthFormState.signUp;
    AuthState.to.form.height = 250;
    AuthState.to.credentialsView.passwordOpacity = 1.0;
    AuthState.to.credentialsView.confirmPasswordOpacity = 1.0;
    AuthState.to.credentialsView.passwordVisibility = true;
    AuthState.to.credentialsView.confirmPasswordVisibility = true;

    if (AuthState.to.credentialsData.email != null) {
      AuthMarksController().showEmailMark();
    }
    if (AuthState.to.credentialsData.password != null) {
      AuthMarksController().showPasswordMark();
    }
    if (AuthState.to.credentialsData.confirmPassword != null) {
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
    AuthState.to.credentialsView.passwordOpacity = 0.0;
    AuthState.to.credentialsView.confirmPasswordOpacity = 0.0;
    AuthState.to.credentialsView.passwordVisibility = false;
    AuthState.to.credentialsView.confirmPasswordVisibility = false;

    AuthMarksController().hideAllMarks();
    AuthState.to.update();
  }
}
