import 'package:elave/index.dart';
import 'package:elave/screens/auth/widgets/auth_logo.dart';

class AuthScreen extends StatefulWidget {
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              Color(0xFF4E597A),
              Color(0xFF293351),
              Color(0xFF1A243E),
            ],
          ),
        ),
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
            _buildForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 200.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF2F4C80)),
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
                    contentPadding:
                        const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, -10.0),
                    hintText: Constants.EMAIL,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.BAIJAMJUREE,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF2F4C80),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  style: TextStyle(fontSize: 14.0),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, -10.0),
                    hintText: Constants.PASSWORD,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.BAIJAMJUREE,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF2F4C80),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              width: 105.0,
              height: 35.0,
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xFF2F4C80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Text(
                  Constants.SIGN_IN,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Fonts.BAIJAMJUREE,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -1.0,
            right: -1.0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 150.0,
                height: 35.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF2F4C80)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(24.0),
                  ),
                ),
                child: Text(
                  Constants.RECOVER_ACC,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Fonts.BAIJAMJUREE,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -1.0,
            left: -1.0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 105.0,
                height: 35.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF2F4C80)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
                child: Text(
                  Constants.SIGN_UP,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Fonts.BAIJAMJUREE,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
