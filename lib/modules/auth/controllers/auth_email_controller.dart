import 'package:elave/index.dart';

class AuthEmailController {
  void onTapping(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());

    authState.credentials.email = text;

    if (text.length == 0) {
      hideSuccessMark();
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
    bool isEmailValide = await validateEmailOnServer(text);

    showSuccessMark();

    if (text.length > 0 && isEmailValide) {
      authState.emailTileController.showFirstSide();
    } else {
      authState.emailTileController.showSecondSide();
    }
  }

  Future<bool> validateEmailOnServer(String text) async {
    var response;
    try {
      response = await Api(route: '/auth/validation/email').post(body: {
        "email": text,
      });
    } catch (errors) {}
    return response['success'];
  }

  void onTapToAnotherField() {
    final authState = Get.put(AuthState());
    if (authState.credentials.email != null) showSuccessMark();
  }

  void showSuccessMark() {
    final authState = Get.put(AuthState());
    authState.credentials.successMarkVisibility = true;
    authState.update();
  }

  void hideSuccessMark() {
    final authState = Get.put(AuthState());
    authState.credentials.successMarkVisibility = false;
    authState.update();
  }
}
