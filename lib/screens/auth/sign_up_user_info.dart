import 'package:elave/index.dart';

class SignUpUserInfo extends StatelessWidget {
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
              SizedBox(height: Get.height * 0.07),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                width: Get.width * 0.95,
                height: 600.0,
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
                          GestureDetector(
                            onTap: Get.put(SignUpUserInfoController())
                                .openChooseWindow,
                            child: Stack(
                              children: [
                                Container(
                                  width: Get.width * 0.38,
                                  height: 140.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Align(
                                    child: Container(
                                      width: 70.0,
                                      height: 70.0,
                                      child: Images.camera,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 2,
                                  left: 95,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                              hintText: "Name",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "Surname",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "Birthday",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "Country",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "City",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "The languages you speak",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "The languages you learn",
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.fromLTRB(
                                10.0,
                                0.0,
                                0.0,
                                -10.0,
                              ),
                              hintText: "Name",
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
                            "Confirm",
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
                            'Cancel',
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
            ],
          ),
        ),
      ),
    );
  }
}
