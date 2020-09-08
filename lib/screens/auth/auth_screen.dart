import 'package:elave/index.dart';
import 'package:elave/screens/auth/widgets/auth_logo.dart';

class AuthScreen extends StatefulWidget {
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue1A,
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
              CustomColors.blue1A,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150.0),
              AuthLogo(),
              const SizedBox(height: 50.0),
              Text(
                Constants.ELAVE,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontFamily: Fonts.ANDADASC,
                ),
              ),
              const SizedBox(height: 50.0),
              AuthSignInForm()
            ],
          ),
        ),
      ),
    );
  }
}
