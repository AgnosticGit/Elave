enum AuthFormState {
  signIn,
  signUp,
  recovery,
}

class AuthFormModel {
  AuthFormModel({
    this.opacity,
    this.height = 200,
    this.currentForm = AuthFormState.signIn,
  });

  double opacity;
  double height;
  AuthFormState currentForm;
}
