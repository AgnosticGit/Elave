import 'package:elave/index.dart';
import 'package:elave/models/auth/auth_form_model.dart';

class AuthFormController extends GetxController {
  void setSignInForm() {
    final newAuthModel = AuthFormModel(
      height: 200,
      currentForm: AuthFormState.signIn,
    );
    final newPasswordState = AuthTextFieldModel(opacity: 1.0, height: null);
    final newConfirmPasswordState = AuthTextFieldModel(
      opacity: 0.0,
      height: 0.0,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordState(newPasswordState);
    authState.mutateConfirmPasswordState(newConfirmPasswordState);
  }

  void setSignUpForm() {
    final newAuthModel = AuthFormModel(
      height: 250,
      currentForm: AuthFormState.signUp,
    );
    final newPasswordState = AuthTextFieldModel(opacity: 1.0, height: null);
    final newConfirmPasswordState = AuthTextFieldModel(
      opacity: 1.0,
      height: null,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordState(newPasswordState);
    authState.mutateConfirmPasswordState(newConfirmPasswordState);
  }

  void setRecoveryForm() {
    final newAuthModel = AuthFormModel(
      height: 140,
      currentForm: AuthFormState.recovery,
    );
    final newPasswordState = AuthTextFieldModel(opacity: 0.0, height: 0.0);
    final newConfirmPasswordState =
        AuthTextFieldModel(opacity: 0.0, height: 0.0);
    final authState = Get.put(AuthState());
    
    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordState(newPasswordState);
    authState.mutateConfirmPasswordState(newConfirmPasswordState);
  }
}
