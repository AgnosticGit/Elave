import 'package:elave/index.dart';

class AuthMarksController {
  void hideAllMarks() {
    hideEmailMark();
    hidePasswordMark();
    hideConfirmPasswordMark();
  }

  void showEmailMark() {
    AuthState.to.credentials.emailMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hideEmailMark() {
    AuthState.to.credentials.emailMarkOpacity = 0.0;
    AuthState.to.update();
  }

  void showPasswordMark() {
    AuthState.to.credentials.passwordMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hidePasswordMark() {
    AuthState.to.credentials.passwordMarkOpacity = 0.0;
    AuthState.to.update();
  }

  void showConfirmPasswordMark() {
    AuthState.to.credentials.confirmPasswordMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hideConfirmPasswordMark() {
    AuthState.to.credentials.confirmPasswordMarkOpacity = 0.0;
    AuthState.to.update();
  }
}
