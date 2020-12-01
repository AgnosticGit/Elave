import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthCredentialsModel authCredentialsModel = AuthCredentialsModel(
    passwordOpacity: 1.0,
    confirmPasswordOpacity: 0.0,
    confirmPasswordHeight: 0.0,
    successMarkVisibility: false,
  );
  AuthFormModel formModel = AuthFormModel(
    height: 200,
    currentForm: AuthFormState.signIn,
  );
  AuthErrorsModel errorsModel = AuthErrorsModel();
  final emailTileController = RotatingTileController();
  final passwordTileController = RotatingTileController();
  final passwordConfirmTileController = RotatingTileController();

  void mutateAuthCredentialsModel(AuthCredentialsModel newModel) {
    if (newModel.email != null) authCredentialsModel.email = newModel.email;
    if (newModel.password != null)
      authCredentialsModel.password = newModel.password;
    if (newModel.confirmPassword != null)
      authCredentialsModel.confirmPassword = newModel.confirmPassword;

    if (newModel.successMarkVisibility != null)
      authCredentialsModel.successMarkVisibility =
          newModel.successMarkVisibility;

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


// class BaseModel {
//   var singletone;
//   static void get() {
//     return Get.put(ModelOne());
//   }
// }

// class ModelOne extends BaseModel {
//   var a = 20;
// }

// var model = ModelOne.get();
// model.a = 10;
// model.save();