import 'package:elave/index.dart';

class AuthController extends GetxController {
  final pageController = PageController(initialPage: 1);
  AuthForm authForm = AuthForm.signIn;

  void onSignIn() {
    Get.put(LogoController()).onLoading();
  }
}
