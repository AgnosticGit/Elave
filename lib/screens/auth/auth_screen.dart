import 'package:elave/index.dart';

class AuthScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue10,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              CustomColors.blue4E,
              CustomColors.blue29,
              CustomColors.blue10,
            ],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 2,
                    child: const SizedBox(),
                  ),
                  AnimatedLogo(),
                  const SizedBox(height: 20.0),
                  Text(
                    'Elave',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    flex: 7,
                    child: _buildFormSelector(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFormSelector() {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (authController) {
        if (authController.authForm == AuthForm.signIn) {
          return Align(child: AuthSignInForm());
        }

        if (authController.authForm == AuthForm.signUp) {
          return Align(child: AuthSignUpForm());
        }
        
      },
    );
  }
}
