import 'package:elave/index.dart';

class AuthSignUpForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
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
                onChanged: (_) => Get.put(LogoController()).shuffle(),
              ),
              TextFormField(
                style: TextStyle(fontSize: 14.0, color: Colors.white),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, -10.0),
                  hintText: 'Password',
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
                onChanged: (_) => Get.put(LogoController()).shuffle(),
              ),
              TextFormField(
                style: TextStyle(fontSize: 14.0, color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(
                    10.0,
                    0.0,
                    0.0,
                    -10.0,
                  ),
                  hintText: "Confirm password",
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
                onChanged: (_) => Get.put(LogoController()).shuffle(),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
        Positioned(
          bottom: -1.0,
          left: -1.0,
          child: SizedBox(
            width: 105.0,
            height: 35.0,
            child: RaisedButton(
              onPressed: Get.put(LogoController()).onLoading,
              color: Color(0xFF2F4C80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24.0),
                  bottomLeft: Radius.circular(12.0),
                ),
              ),
              child: Text(
                "Sign Up",
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
          right: -1.0,
          child: GestureDetector(
            onTap: () {
              Get.put(LogoController()).stopRotate();
            },
            child: Container(
              alignment: Alignment.center,
              width: 105.0,
              height: 35.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF2F4C80)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Fonts.BAIJAMJUREE,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
