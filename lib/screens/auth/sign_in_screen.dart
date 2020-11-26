import 'dart:ui';

import 'package:elave/index.dart';
import 'package:elave/widgets/animated_logo.dart';

class SignInScreen extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.2),
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
              const SizedBox(height: 50.0),
              _buildFormSelector(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormSelector() {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (authController) {
        return Container(
          child: PageView(
            controller: authController.pageController,
            children: [
              AuthSignInForm(),
            ],
          ),
        );
      },
    );
  }
}
