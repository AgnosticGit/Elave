import 'package:elave/index.dart';

class AuthForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AuthFormController>(
      init: AuthFormController(),
      builder: (authFormController) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          constraints: BoxConstraints(maxWidth: 500),
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          height: authFormController.formHeight,
          decoration: BoxDecoration(
            border: Border.all(color: CustomColors.blue2F),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    const SizedBox(height: 25.0),
                    TextFormField(
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(
                          10.0,
                          0.0,
                          0.0,
                          -10.0,
                        ),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors.blue2F,
                            width: 1.0,
                          ),
                        ),
                      ),
                      initialValue: Get.put(AuthController()).authModel.email,
                      onChanged: (text) {
                        Get.put(AuthController()).onTapping(
                          AuthTextField.email,
                          text,
                        );
                      },
                    ),
                    AnimatedOpacity(
                      opacity: authFormController.passwordState.opacity,
                      duration: Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: authFormController.passwordState.height,
                        child: TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(
                                10.0, 0.0, 0.0, -10.0),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColors.blue2F,
                                width: 1.0,
                              ),
                            ),
                          ),
                          initialValue:
                              Get.put(AuthController()).authModel.password,
                          onChanged: (text) {
                            Get.put(AuthController()).onTapping(
                              AuthTextField.password,
                              text,
                            );
                          },
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: authFormController.confirmPasswordState.opacity,
                      duration: Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: authFormController.confirmPasswordState.height,
                        child: TextFormField(
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(
                              10.0,
                              0.0,
                              0.0,
                              -10.0,
                            ),
                            hintText: "Confirm password",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF2F4C80),
                                width: 1.0,
                              ),
                            ),
                          ),
                          initialValue: Get.put(AuthController())
                              .authModel
                              .confirmPassword,
                          onChanged: (text) {
                            Get.put(AuthController()).onTapping(
                              AuthTextField.confirmPassword,
                              text,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -1.0,
                right: -1.0,
                child: SizedBox(
                  width: 105.0,
                  height: 35.0,
                  child: FlatButton(
                    onPressed: () {
                      Get.put(AuthController()).onTapSignIn();
                    },
                    color: _buildButtonColor(
                      authFormController.form == AuthFormState.signIn,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: CustomColors.blue2F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -1.0,
                right: -1.0,
                child: SizedBox(
                  width: 150.0,
                  height: 35.0,
                  child: FlatButton(
                    onPressed: () =>
                        Get.put(AuthController()).onTapRecoveryAccount(),
                    color: _buildButtonColor(
                      authFormController.form == AuthFormState.recovery,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: CustomColors.blue2F),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12.0),
                        bottomLeft: Radius.circular(24.0),
                      ),
                    ),
                    child: Text(
                      "Recover Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -1.0,
                left: -1.0,
                child: SizedBox(
                  width: 105.0,
                  height: 35.0,
                  child: FlatButton(
                    onPressed: () => Get.put(AuthController()).onTapSignUp(),
                    color: _buildButtonColor(
                      authFormController.form == AuthFormState.signUp,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: CustomColors.blue2F),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24.0),
                        bottomLeft: Radius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _buildButtonColor(bool state) {
    if (state) return CustomColors.blue2F;
    return Colors.transparent;
  }
}
