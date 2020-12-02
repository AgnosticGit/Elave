import 'package:elave/index.dart';

class AuthState extends GetxController {
  AuthCredentialsModel credentials = AuthCredentialsModel();
  AuthFormModel form = AuthFormModel();
  AuthErrorsModel errors = AuthErrorsModel();

  final emailTileController = RotatingTileController();
  final passwordTileController = RotatingTileController();
  final confirmPasswordTileController = RotatingTileController();

  Timer debounce;

  void cleanErrors() {
    errors = AuthErrorsModel();
  }
}
