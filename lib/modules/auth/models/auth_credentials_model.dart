class AuthCredentialsModel {
  AuthCredentialsModel({
    this.email,
    this.password,
    this.confirmPassword,
    this.isEmailValid = false,
    this.passwordOpacity = 1.0,
    this.passwordHeight,
    this.confirmPasswordOpacity = 0.0,
    this.confirmPasswordHeight = 0.0,
    this.emailMarkOpacity = 0.0,
    this.passwordMarkOpacity = 0.0,
    this.confirmPasswordMarkOpacity = 0.0,
  });

  String email;
  String password;
  String confirmPassword;

  bool isEmailValid;

  double passwordOpacity;
  double passwordHeight;
  double confirmPasswordOpacity;
  double confirmPasswordHeight;

  double emailMarkOpacity;
  double passwordMarkOpacity;
  double confirmPasswordMarkOpacity;
}
