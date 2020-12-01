import 'package:elave/index.dart';

class AuthEmailController {
  void onTapping(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authModel = AuthCredentialsModel(email: text, emailHadText: true);
    // authState.emailFocus.hasFocus;
    checkErrors(text);
    authState.mutateAuthCredentialsModel(authModel);
    logoController.shuffle();
  }

  void checkErrors(String text) {
    final authState = Get.put(AuthState());

    if (authState.authCredentialsModel.emailHadText && emailValidator(text)) {
      authState.emailTileController.showFirstSide();
    } else {
      authState.emailTileController.showSecondSide();
    }
  }

  bool emailValidator(String text) {
    bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(text);
    return emailValid;
  }
}
