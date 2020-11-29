import 'package:elave/index.dart';

class AuthScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AuthState>(
        init: AuthState(),
        builder: (authState) {
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
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: [
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
                      const SizedBox(height: 50),
                      AuthForm(),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
