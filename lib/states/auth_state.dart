import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthCredentialsModel authCredentialsModel = AuthCredentialsModel();
  AuthErrorsModel errorsModel = AuthErrorsModel();
  AuthFormModel formModel = AuthFormModel();
  final emailTileController = RotatingTileController();
  final emailFocus = FocusNode();


  void mutateAuthCredentialsModel(AuthCredentialsModel newModel) {
    if (newModel.email != null) authCredentialsModel.email = newModel.email;
    if (newModel.password != null)
      authCredentialsModel.password = newModel.password;
    if (newModel.confirmPassword != null)
      authCredentialsModel.confirmPassword = newModel.confirmPassword;

    if (newModel.passwordOpacity != null)
      authCredentialsModel.passwordOpacity = newModel.passwordOpacity;
    if (newModel.passwordHeight != null)
      authCredentialsModel.passwordHeight = newModel.passwordHeight;
    if (authCredentialsModel.confirmPasswordOpacity != null)
      authCredentialsModel.confirmPasswordOpacity =
          newModel.confirmPasswordOpacity;
    if (authCredentialsModel.confirmPasswordHeight != null)
      authCredentialsModel.confirmPasswordHeight =
          newModel.confirmPasswordHeight;
    if (authCredentialsModel.emailHadText != null)
      authCredentialsModel.emailHadText = newModel.emailHadText;
    update();
  }

  void mutateAuthCredentialsView(
    double passwordOpacity,
    double passwordHeight,
    double confirmPasswordOpacity,
    double confirmPasswordHeight,
  ) {
    authCredentialsModel.passwordOpacity = passwordOpacity;
    authCredentialsModel.passwordHeight = passwordHeight;
    authCredentialsModel.confirmPasswordOpacity = confirmPasswordOpacity;
    authCredentialsModel.confirmPasswordHeight = confirmPasswordHeight;
    update();
  }

  void mutateFormModel(AuthFormModel newModel) {
    if (newModel.height != null) formModel.height = newModel.height;
    if (newModel.currentForm != null)
      formModel.currentForm = newModel.currentForm;
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
