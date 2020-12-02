class AuthCredentialsModel {
  AuthCredentialsModel({
    this.email,
    this.password,
    this.confirmPassword,
    this.passwordOpacity = 1.0,
    this.passwordHeight,
    this.confirmPasswordOpacity = 0.0,
    this.confirmPasswordHeight = 0.0,
    this.successMarkVisibility = false,
  });

  String email;
  String password;
  String confirmPassword;

  double passwordOpacity;
  double passwordHeight;
  double confirmPasswordOpacity;
  double confirmPasswordHeight;
  bool successMarkVisibility;
}
