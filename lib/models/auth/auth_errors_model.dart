class AuthErrorsModel {
  AuthErrorsModel({this.email, this.password});

  String message;
  List<String> email = [];
  List<String> password = [];

  AuthErrorsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    email = json['errors']['email'];
    password = json['errors']['password'];
  }
}
