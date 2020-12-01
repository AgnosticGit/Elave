enum AuthFormState {
  signIn,
  signUp,
  recovery,
}

class AuthFormModel {
  AuthFormModel({
    this.height,
    this.currentForm,
  });

  double height;
  AuthFormState currentForm;
}
