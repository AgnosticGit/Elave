import 'package:elave/index.dart';

class AuthForm extends StatelessWidget {
  Widget build(BuildContext context) {
    final authState = Get.put(AuthState());

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      constraints: BoxConstraints(maxWidth: 500),
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      height: authState.form.height,
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
                AuthTextFormField(
                  autocorrect: false,
                  hintText: 'E-mail',
                  textField: AuthTextField.email,
                  onChanged: AuthEmailController().onTapping,
                  icon: AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: authState.credentials.emailMarkOpacity,
                    child: RotatingTile(
                      controller: authState.emailTileController,
                      firstSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.error,
                      ),
                      secondSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.success,
                      ),
                    ),
                  ),
                ),
                AuthTextFormField(
                  visible: authState.credentials.passwordVisibility,
                  onTap: AuthPasswordController().onFocus,
                  hintText: 'Password',
                  textField: AuthTextField.password,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  opacity: authState.credentials.passwordOpacity,
                  initialValue: authState.credentials.password,
                  onChanged: AuthPasswordController().onTappingPassword,
                  icon: AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: authState.credentials.passwordMarkOpacity,
                    child: RotatingTile(
                      controller: authState.passwordTileController,
                      firstSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.error,
                      ),
                      secondSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.success,
                      ),
                    ),
                  ),
                ),
                AuthTextFormField(
                  visible: authState.credentials.confirmPasswordVisibility,
                  onTap: AuthPasswordController().onTapConfirmPassword,
                  hintText: 'Confirm Password',
                  textField: AuthTextField.confirmPassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  opacity: authState.credentials.confirmPasswordOpacity,
                  initialValue: authState.credentials.confirmPassword,
                  onChanged: AuthPasswordController().onTappingConfirmPassword,
                  icon: AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: authState.credentials.confirmPasswordMarkOpacity,
                    child: RotatingTile(
                      controller: authState.confirmPasswordTileController,
                      firstSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.error,
                      ),
                      secondSide: Container(
                        height: 25.0,
                        width: 25.0,
                        child: Images.success,
                      ),
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
                onPressed: AuthController().onTapSignIn,
                color: _buildButtonColor(
                  authState.form.currentForm == AuthFormState.signIn,
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
                onPressed: AuthController().onTapRecoveryAccount,
                color: _buildButtonColor(
                  authState.form.currentForm == AuthFormState.recovery,
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
                onPressed: AuthController().onTapSignUp,
                color: _buildButtonColor(
                  authState.form.currentForm == AuthFormState.signUp,
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
  }

  Color _buildButtonColor(bool state) {
    if (state) return CustomColors.blue2F;
    return Colors.transparent;
  }
}
