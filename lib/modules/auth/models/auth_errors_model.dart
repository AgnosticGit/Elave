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
    if (json['errors'] != null && json['errors']['email'] != null) {
      email = json['errors']['email'];
    }
  }
}
