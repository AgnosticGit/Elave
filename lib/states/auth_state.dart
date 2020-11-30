import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthModel authModel = AuthModel();
  AuthErrorsModel errorsModel = AuthErrorsModel();
  AuthFormModel formModel = AuthFormModel();
  AuthTextFieldModel passwordModel = AuthTextFieldModel(
    opacity: 1.0,
    height: null,
  );
  AuthTextFieldModel confirmPasswordModel = AuthTextFieldModel(
    opacity: 0.0,
    height: 0.0,
  );

  void mutateAuthModel(AuthModel newModel) {
    if (newModel.email != null) authModel.email = newModel.email;
    if (newModel.password != null) authModel.password = newModel.password;
    if (newModel.confirmPassword != null)
      authModel.confirmPassword = newModel.confirmPassword;
    update();
  }

  void mutateFormModel(AuthFormModel newModel) {
    if (newModel.opacity != null) formModel.opacity = newModel.opacity;
    if (newModel.height != null) formModel.height = newModel.height;
    if (newModel.currentForm != null)
      formModel.currentForm = newModel.currentForm;
    update();
  }

  void mutatePasswordModel(AuthTextFieldModel newModel) {
    passwordModel = newModel;
    update();
  }

  void mutateConfirmPasswordModel(AuthTextFieldModel newModel) {
    confirmPasswordModel = newModel;
    update();
  }

  void mutateErrors(AuthErrorsModel newModel) {
    errorsModel = newModel;
    update();
  }

  void cleanErrors() {
    errorsModel = AuthErrorsModel();
    update();
  }
}
