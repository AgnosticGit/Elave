class AuthCredentialsModel {
  AuthCredentialsModel({
    this.email,
    this.password,
    this.confirmPassword,
    this.passwordOpacity,
    this.passwordHeight,
    this.confirmPasswordOpacity,
    this.confirmPasswordHeight,
    this.successMarkVisibility,
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
