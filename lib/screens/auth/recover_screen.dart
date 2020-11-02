import 'package:elave/index.dart';
import 'package:elave/widgets/animated_logo.dart';

class RecoverScreen extends StatelessWidget {
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
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                width: Get.width * 0.95,
                height: 150.0,
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
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
                            onChanged: (_) =>
                                Get.put(AnimatedLogoController()).shuffle(),
                          ),
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
                          onPressed:
                              Get.put(AnimatedLogoController()).onLoading,
                          color: Color(0xFF2F4C80),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.0),
                              bottomRight: Radius.circular(12.0),
                            ),
                          ),
                          child: Text(
                            "Recover",
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
                ),
              )
              // AuthSwiper(),
            ],
          ),
        ),
      ),
    );
  }
}
