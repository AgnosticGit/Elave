import 'package:elave/index.dart';

class AuthEmailController {
  void onTapping(String text) {
    final logoController = Get.put(LogoController());
    final authState = Get.put(AuthState());
    final authModel = AuthModel(email: text);

    
    authState.mutateAuthModel(authModel);
    logoController.shuffle();
  }
}
