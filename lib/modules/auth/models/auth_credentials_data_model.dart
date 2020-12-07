class AuthCredentialsDataModel {
  AuthCredentialsDataModel({
    this.email,
    this.password,
    this.confirmPassword,
    this.isEmailValid = false,
  });

  String email;
  String password;
  String confirmPassword;
  bool isEmailValid;
}
