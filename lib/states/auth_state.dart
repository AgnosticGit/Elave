import 'package:elave/index.dart';

class AuthState extends GetxController {
  static AuthState get to => Get.put(AuthState());

  AuthCredentialsModel credentials = AuthCredentialsModel();
  AuthFormModel form = AuthFormModel();
  AuthErrorsModel errors = AuthErrorsModel();

  final emailTileController = RotatingTileController();
  final passwordTileController = RotatingTileController();
  final confirmPasswordTileController = RotatingTileController();

  Timer debounce;

  void cleanErrors() => errors = AuthErrorsModel();
}
