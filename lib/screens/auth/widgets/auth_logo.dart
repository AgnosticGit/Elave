import 'package:elave/index.dart';

class AuthLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AuthLogoController>(
      init: AuthLogoController(),
      builder: (authLogoController) {
        return Container(
          width: double.infinity,
          height: authLogoController.logoSize,
          child: Stack(
            children: [
              AnimatedPositioned(
                top: authLogoController.halfLogoSize,
                left: authLogoController.center,
                duration: Duration(milliseconds: 0),
                // onEnd: () => decreaseSize(1),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos1[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos1[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.firstStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(2),
                child: Container(
                  alignment: Alignment.center,
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    duration: Duration(milliseconds: 1000),
                    width: authLogoController.rectangleSize,
                    height: authLogoController.rectangleSize,
                    decoration: BoxDecoration(
                      color:
                          Colors.white.withOpacity(authLogoController.pos1[2]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos2[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos2[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.firstStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(3),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos2[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos3[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos3[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.firstStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(4),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos3[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos4[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos4[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.firstStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(5),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos4[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos5[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos5[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.secondStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(6),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos5[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos6[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos6[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.secondStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(7),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos6[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos7[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos7[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.secondStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(8),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos7[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              AnimatedPositioned(
                top: authLogoController.started
                    ? authLogoController.pos8[0]
                    : authLogoController.halfLogoSize,
                left: authLogoController.started
                    ? authLogoController.pos8[1]
                    : authLogoController.center,
                duration: Duration(
                    milliseconds: authLogoController.secondStageDuration),
                curve: authLogoController.curve,
                // onEnd: () => decreaseSize(9),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 1000),
                  width: authLogoController.rectangleSize,
                  height: authLogoController.rectangleSize,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(authLogoController.pos8[2]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
