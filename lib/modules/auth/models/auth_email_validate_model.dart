class AuthEmailValidateModel {
  AuthEmailValidateModel({
    this.isEmailValid,
    this.error,
  });

  bool isEmailValid;
  String error;

  AuthEmailValidateModel.fromJson(Map<String, dynamic> json) {
    isEmailValid = json['data'] != null ? json['data']['isEmailValid'] : false;
   
  }
}
