import 'package:elave/index.dart';

class AuthEmailController {
  Timer _debounceTimer;

  void onTapping(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authModel = AuthCredentialsModel(email: text);

    if (text.length == 0) {
      hideSuccessMark();
    } else {
      if (_debounceTimer != null) _debounceTimer.cancel();
      _debounceTimer = Timer.periodic(Duration(seconds: 1), (timer) {
        _debounceTimer.cancel();
        if (timer.tick == 1) {
          checkErrors(text);
          _debounceTimer.cancel();
        }
      });
    }

    authState.mutateAuthCredentialsModel(authModel);
    logoController.shuffle();
  }

  void checkErrors(String text) async {
    final authState = Get.put(AuthState());
    bool isEmailValide = await validateEmailOnServer(text);
    print(isEmailValide);
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
    if (authState.authCredentialsModel.email != null) {
      showSuccessMark();
    }
  }

  void showSuccessMark() {
    final authState = Get.put(AuthState());
    authState.mutateAuthCredentialsModel(
      AuthCredentialsModel(successMarkVisibility: true),
    );
  }

  void hideSuccessMark() {
    final authState = Get.put(AuthState());
    authState.mutateAuthCredentialsModel(
      AuthCredentialsModel(successMarkVisibility: false),
    );
  }
}
