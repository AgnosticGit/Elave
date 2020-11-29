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

  String getEmailErrors() {
    final email = errors.email;
    if (email != null && email.length > 0) {
      return errors.email[0];
    }
    return null;
  }

  String getPasswordErrors() {
    final password = errors.password;
    if (password != null && password.length > 0) {
      return errors.password[0];
    }
    return null;
  }

  String getConfirmPasswordErrors() {
    final confirmPassword = errors.confirmPassword;
    if (confirmPassword != null && confirmPassword.length > 0) {
      return errors.confirmPassword[0];
    }
    return null;
  }

  double getErrorsCount() {
    double count = 0;
    if (errors.email != null) count++;
    if (errors.password != null) count++;
    if (errors.confirmPassword != null) count++;
    return count;
  }
}
