import 'package:elave/index.dart';
import 'package:elave/models/auth/auth_form_model.dart';

class AuthFormController extends GetxController {
  void setSignInForm() {
    final newAuthModel = AuthFormModel(
      height: 200,
      currentForm: AuthFormState.signIn,
    );
    final newPasswordModel = AuthTextFieldModel(opacity: 1.0, height: null);
    final newConfirmPasswordModel = AuthTextFieldModel(
      opacity: 0.0,
      height: 0.0,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordModel(newPasswordModel);
    authState.mutateConfirmPasswordModel(newConfirmPasswordModel);
  }

  void setSignUpForm() {
    final newAuthModel = AuthFormModel(
      height: 250,
      currentForm: AuthFormState.signUp,
    );
    final newPasswordModel = AuthTextFieldModel(opacity: 1.0, height: null);
    final newConfirmPasswordModel = AuthTextFieldModel(
      opacity: 1.0,
      height: null,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordModel(newPasswordModel);
    authState.mutateConfirmPasswordModel(newConfirmPasswordModel);
  }

  void setRecoveryForm() {
    final newAuthModel = AuthFormModel(
      height: 140,
      currentForm: AuthFormState.recovery,
    );
    final newPasswordModel = AuthTextFieldModel(opacity: 0.0, height: 0.0);
    final newConfirmPasswordModel = AuthTextFieldModel(
      opacity: 0.0,
      height: 0.0,
    );
    final authState = Get.put(AuthState());

    authState.cleanErrors();
    authState.mutateFormModel(newAuthModel);
    authState.mutatePasswordModel(newPasswordModel);
    authState.mutateConfirmPasswordModel(newConfirmPasswordModel);
  }
}
