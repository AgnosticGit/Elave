import 'package:elave/index.dart';

class AuthEmailController {
  void onTapping(String text) {
    final authState = Get.put(AuthState());
    final currentForm = authState.form.currentForm;
    final logoController = Get.put(AnimatedLogoController());

    authState.credentials.email = text;

    if (currentForm == AuthFormState.signUp) checkErrorsWithDebounce();
    logoController.shuffle();
    authState.update();
  }

  void checkErrorsWithDebounce() {
    final authState = Get.put(AuthState());

    if (authState.debounce != null) authState.debounce.cancel();

    authState.debounce = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == 1) {
        checkErrors();

        timer.cancel();
      }
    });
  }

  void checkErrors() async {
    final authState = Get.put(AuthState());
    final credentials = authState.credentials;

    await validateEmailOnServer();

    if (credentials.email != null) {
      showMark();
      if (credentials.email.length > 0 && credentials.isEmailValid) {
        authState.emailTileController.showSecondSide();
      } else {
        authState.emailTileController.showFirstSide();
      }
    }
  }

  Future validateEmailOnServer() async {
    final authState = Get.put(AuthState());

    try {
      var response = await Api(route: '/auth/validation/email').post(body: {
        "email": authState.credentials.email ?? '',
      });
      authState.credentials.isEmailValid = response['data']['isEmailValid'];
    } catch (errors) {
      authState.credentials.isEmailValid = false;
      authState.errors = AuthErrorsModel.fromJson(errors);
    }
  }

  void onTapToAnotherField() {
    final authState = Get.put(AuthState());
    if (authState.credentials.email != null) showMark();
  }

  void showMark() {
    final authState = Get.put(AuthState());

    if (authState.form.currentForm == AuthFormState.signUp) {
      authState.credentials.emailMarkOpacity = 1.0;
    }
    authState.update();
  }

  void hideMark() {
    final authState = Get.put(AuthState());
    authState.credentials.emailMarkOpacity = 0.0;
    authState.update();
  }
}
