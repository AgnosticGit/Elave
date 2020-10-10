import 'package:elave/index.dart';

class AuthSignInForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      width: Get.width * 0.95,
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
                    contentPadding: const EdgeInsets.fromLTRB(
                      10.0,
                      0.0,
                      0.0,
                      -10.0,
                    ),
                    hintText: Constants.EMAIL,
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF2F4C80),
                        width: 1.0,
                      ),
                    ),
                  ),
                  onChanged: (_) => Get.put(AnimatedLogoController()).shuffle(),
                ),
                TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, -10.0),
                    hintText: Constants.PASSWORD,
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF2F4C80),
                        width: 1.0,
                      ),
                    ),
                  ),
                  onChanged: (_) => Get.put(AnimatedLogoController()).shuffle(),
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
                onPressed: () => Get.put(AnimatedLogoController()).onLoading(),
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
                    color: Colors.white
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
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -1.0,
            left: -1.0,
            child: GestureDetector(
              onTap: () {
                Get.put(AnimatedLogoController()).stopRotate();
              },
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
                    color: Colors.white
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
