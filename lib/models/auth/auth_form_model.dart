import 'package:elave/index.dart';

enum AuthFormState {
  signIn,
  signUp,
  recovery,
}

class AuthFormModel {
  AuthFormModel({
    this.opacity,
    this.height = 200,
    this.color,
    this.currentForm = AuthFormState.signIn,
  });

  double opacity;
  double height;
  Color color;
  AuthFormState currentForm;
  
}
