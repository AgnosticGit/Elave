enum AuthFormState {
  signIn,
  signUp,
  recovery,
}

class AuthFormModel {
  AuthFormModel({
    this.height = 200,
    this.currentForm = AuthFormState.signIn,
  });

  double height;
  AuthFormState currentForm;
}
