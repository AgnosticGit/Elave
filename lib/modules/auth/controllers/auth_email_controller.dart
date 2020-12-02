import 'package:elave/index.dart';

class AuthEmailController {
  void onTapping(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.email = text;

    if (text.length == 0) {
      hideMark();
    } else {
      checkErrorsWithDebounce();
    }

    logoController.shuffle();
    authState.update();
  }

  void checkErrorsWithDebounce() {
    final authState = Get.put(AuthState());

    if (authState.debounce != null) authState.debounce.cancel();

    authState.debounce = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == 1) {
        if (authState.credentials.email.length != 0) {
          checkErrors(authState.credentials.email);
        }
        timer.cancel();
      }
    });
  }

  void checkErrors(String text) async {
    final authState = Get.put(AuthState());

    await validateEmailOnServer(text);
    showMark();

    if (text.length > 0 && authState.credentials.isEmailValid) {
      authState.emailTileController.showFirstSide();
    } else {
      authState.emailTileController.showSecondSide();
    }
  }

  Future validateEmailOnServer(String text) async {
    final authState = Get.put(AuthState());

    try {
      var response = await Api(route: '/auth/validation/email').post(body: {
        "email": text,
      });
      authState.credentials.isEmailValid = response['data']['isEmailValid'];
    } catch (errors) {
      authState.errors = AuthErrorsModel.fromJson(errors);
    }
  }

  void onTapToAnotherField() {
    final authState = Get.put(AuthState());
    if (authState.credentials.email != null) showMark();
  }

  void showMark() {
    final authState = Get.put(AuthState());
    authState.credentials.emailMarkOpacity = 1.0;
    authState.update();
  }

  void hideMark() {
    final authState = Get.put(AuthState());
    authState.credentials.emailMarkOpacity = 0.0;
    authState.update();
  }
}
