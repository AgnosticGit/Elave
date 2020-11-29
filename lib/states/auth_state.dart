import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthErrorsModel errors = AuthErrorsModel();

  void setErrors(AuthErrorsModel authErrors) {
    errors = authErrors;
    update();
  }

  void cleanErrors() {
    errors = AuthErrorsModel();
    update();
  }

}
