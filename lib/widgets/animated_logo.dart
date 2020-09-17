import 'package:elave/index.dart';

class AnimatedLogo extends StatelessWidget {
  AnimatedLogo({this.logoSize = 160.0});

  final double logoSize;

  Widget build(BuildContext context) {
    return GetBuilder<AnimatedLogoController>(
      init: AnimatedLogoController(logoSize: logoSize),
      builder: (animatedLogoController) {
        return Container(
          width: animatedLogoController.logoSize,
          height: animatedLogoController.logoSize,
          child: Stack(
            children: [
              _buildLogoElement(
                animatedLogoController,
                animatedLogoController.logoElement0,
              ),
              Transform.rotate(
                  angle: animatedLogoController.rotate,

                  child: Stack(
                    children: [
                      _buildLogoElement(
                        animatedLogoController,
                        animatedLogoController.logoElement1,
                      ),
                      _buildLogoElement(
                        animatedLogoController,
                        animatedLogoController.logoElement2,
                      ),
                      _buildLogoElement(
                        animatedLogoController,
                        animatedLogoController.logoElement3,
                      ),
                      _buildLogoElement(
                        animatedLogoController,
                        animatedLogoController.logoElement4,
                      ),
                    ],
                  )),
              _buildLogoElement(
                animatedLogoController,
                animatedLogoController.logoElement5,
              ),
              _buildLogoElement(
                animatedLogoController,
                animatedLogoController.logoElement6,
              ),
              _buildLogoElement(
                animatedLogoController,
                animatedLogoController.logoElement7,
              ),
              _buildLogoElement(
                animatedLogoController,
                animatedLogoController.logoElement8,
              ),
            ],
          ),
        );
      },
    );
  }

  AnimatedPositioned _buildLogoElement(
    AnimatedLogoController animatedLogoController,
    LogoElementModel logoElement,
  ) {
    return AnimatedPositioned(
      left: animatedLogoController.started
          ? logoElement.x
          : animatedLogoController.centerX,
      top: animatedLogoController.started
          ? logoElement.y
          : animatedLogoController.centerY,
      duration: Duration(milliseconds: animatedLogoController.duration),
      curve: animatedLogoController.curve,
      child: Container(
        width: animatedLogoController.rectangleSize,
        height: animatedLogoController.rectangleSize,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(logoElement.opacity),
          borderRadius: BorderRadius.circular(
            animatedLogoController.borderRadius,
          ),
        ),
      ),
    );
  }
}
