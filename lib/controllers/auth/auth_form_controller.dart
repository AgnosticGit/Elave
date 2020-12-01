import 'package:elave/index.dart';
import 'package:elave/models/auth/auth_form_model.dart';

class AuthFormController {
  void setSignInForm() {
    final newAuthModel = AuthFormModel(
      height: 200,
      currentForm: AuthFormState.signIn,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateAuthCredentialsView(1.0, null, 0.0, 0.0);
    authState.mutateFormModel(newAuthModel);
  }

  void setSignUpForm() {
    final newAuthModel = AuthFormModel(
      height: 250,
      currentForm: AuthFormState.signUp,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateAuthCredentialsView(1.0, null, 1.0, null);
    authState.mutateFormModel(newAuthModel);
  }

  void setRecoveryForm() {
    final newAuthModel = AuthFormModel(
      height: 140,
      currentForm: AuthFormState.recovery,
    );

    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutateAuthCredentialsView(0.0, 0.0, 0.0, 0.0);
  }
}
