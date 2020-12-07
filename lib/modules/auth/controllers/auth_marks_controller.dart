import 'package:elave/index.dart';

class AuthMarksController {
  void hideAllMarks() {
    hideEmailMark();
    hidePasswordMark();
    hideConfirmPasswordMark();
  }

  void showEmailMark() {
    AuthState.to.credentialsView.emailMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hideEmailMark() {
    AuthState.to.credentialsView.emailMarkOpacity = 0.0;
    AuthState.to.update();
  }

  void showPasswordMark() {
    AuthState.to.credentialsView.passwordMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hidePasswordMark() {
    AuthState.to.credentialsView.passwordMarkOpacity = 0.0;
    AuthState.to.update();
  }

  void showConfirmPasswordMark() {
    AuthState.to.credentialsView.confirmPasswordMarkOpacity = 1.0;
    AuthState.to.update();
  }

  void hideConfirmPasswordMark() {
    AuthState.to.credentialsView.confirmPasswordMarkOpacity = 0.0;
    AuthState.to.update();
  }
}
