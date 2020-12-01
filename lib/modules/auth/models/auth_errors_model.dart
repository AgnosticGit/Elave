class AuthErrorsModel {
  AuthErrorsModel({
    this.email,
    this.password,
    this.confirmPassword,
  });

  String message;
  List<dynamic> email;
  List<dynamic> password;
  List<dynamic> confirmPassword;

  AuthErrorsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    email = json['errors']['email'];
    password = json['errors']['password'];
  }
}
