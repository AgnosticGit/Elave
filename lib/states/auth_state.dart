import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthModel authModel = AuthModel();
  AuthErrorsModel errors = AuthErrorsModel();
  AuthFormModel formModel = AuthFormModel();
  AuthTextFieldModel passwordState =
      AuthTextFieldModel(opacity: 1.0, height: null);
  AuthTextFieldModel confirmPasswordState =
      AuthTextFieldModel(opacity: 0.0, height: 0);

  void mutateAuthModel(AuthModel newAuthModel) {
    authModel.confirmPassword = newAuthModel.confirmPassword;
    authModel.email = newAuthModel.email;
    update();
  }

  void mutateFormModel(AuthFormModel newFormModel) {
    formModel = newFormModel;
    update();
  }

  void mutatePasswordState(AuthTextFieldModel newPasswordState) {
    passwordState = newPasswordState;
    update();
  }

  void mutateConfirmPasswordState(newConfirmPasswordState) {
    confirmPasswordState = newConfirmPasswordState;
    update();
  }

  void mutateErrors(AuthErrorsModel newErrors) {
    errors = newErrors;
    update();
  }

  void cleanErrors() {
    errors = AuthErrorsModel();
    update();
  }
}
