import 'package:elave/index.dart';

class AuthLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthLogoState();
}

class _AuthLogoState extends State<AuthLogo> {
  bool started = false;
  bool increased = false;
  double rectangleSize = 45.0;
  double increasedRectangleSize = 50.0;
  double logoSize = 160.0;
  Curve curve = Curves.linear;
  int firstStageDuration = 300;
  int secondStageDuration = 300;

  double cube1 = 45.0;
  double cube2 = 45.0;
  double cube3 = 45.0;
  double cube4 = 45.0;
  double cube5 = 45.0;
  double cube6 = 45.0;
  double cube7 = 45.0;
  double cube8 = 45.0;
  double cube9 = 45.0;

  get halfRectangle => rectangleSize / 2;
  get halfLogoSize => logoSize / 2 - 22.5;
  get center => Get.width / 2 - halfRectangle;

  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 500), () {
      setState(() {
        started = true;
      });
    });
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: logoSize,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: halfLogoSize,
            left: center,
            duration: Duration(milliseconds: 0),
            // onEnd: () => decreaseSize(1),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              width: cube1,
              height: cube1,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize - 27 : halfLogoSize,
            left: started ? center - 27 : center,
            duration: Duration(milliseconds: firstStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(2),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube2,
                height: cube2,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize - 27 : halfLogoSize,
            left: started ? center + 27 : center,
            duration: Duration(milliseconds: firstStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(3),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube3,
                height: cube3,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize + 27 : halfLogoSize,
            left: started ? center - 27 : center,
            duration: Duration(milliseconds: firstStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(4),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube4,
                height: cube4,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize + 27 : halfLogoSize,
            left: started ? center + 27 : center,
            duration: Duration(milliseconds: firstStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(5),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube5,
                height: cube5,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize + 54 : halfLogoSize,
            left: started ? center : center,
            duration: Duration(milliseconds: secondStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(6),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube6,
                height: cube6,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize - 54 : halfLogoSize,
            left: started ? center : center,
            duration: Duration(milliseconds: secondStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(7),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube7,
                height: cube7,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize : halfLogoSize,
            left: started ? center - 54 : center,
            duration: Duration(milliseconds: secondStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(8),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube8,
                height: cube8,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: started ? halfLogoSize : halfLogoSize,
            left: started ? center + 54 : center,
            duration: Duration(milliseconds: secondStageDuration),
            curve: curve,
            // onEnd: () => decreaseSize(9),
            child: Container(
              alignment: Alignment.center,
              width: rectangleSize,
              height: rectangleSize,
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 1000),
                width: cube9,
                height: cube9,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void decreaseSize(int cubeNumber) async {
    setState(() {
      if (cubeNumber == 1) {
        cube1 = 35;
      }
      if (cubeNumber == 2) {
        cube2 = 35;
      }
      if (cubeNumber == 3) {
        cube3 = 35;
      }
      if (cubeNumber == 4) {
        cube4 = 35;
      }
      if (cubeNumber == 5) {
        cube5 = 35;
      }
      if (cubeNumber == 6) {
        cube6 = 35;
      }
      if (cubeNumber == 7) {
        cube7 = 35;
      }
      if (cubeNumber == 8) {
        cube8 = 35;
      }
      if (cubeNumber == 9) {
        cube9 = 35;
      }
    });

    Future.delayed(Duration(milliseconds: 1000), () {
      increaseSize(cubeNumber);
    });
  }

  void increaseSize(int cubeNumber) {
    setState(() {
      if (cubeNumber == 1) {
        cube1 = 45;
      }
      if (cubeNumber == 2) {
        cube2 = 45;
      }
      if (cubeNumber == 3) {
        cube3 = 45;
      }
      if (cubeNumber == 4) {
        cube4 = 45;
      }
      if (cubeNumber == 5) {
        cube5 = 45;
      }
      if (cubeNumber == 6) {
        cube6 = 45;
      }
      if (cubeNumber == 7) {
        cube7 = 45;
      }
      if (cubeNumber == 8) {
        cube8 = 45;
      }
      if (cubeNumber == 9) {
        cube9 = 45;
      }
    });

    Timer(Duration(milliseconds: 1000), () {
      decreaseSize(cubeNumber);
    });
  }
}
