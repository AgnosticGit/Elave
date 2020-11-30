import 'package:elave/index.dart';

class AnimatedLogo extends StatelessWidget {
  AnimatedLogo({this.logoSize = 160.0});

  final double logoSize;

  Widget build(BuildContext context) {
    return GetBuilder<LogoController>(
      init: LogoController(logoSize: logoSize),
      builder: (logoController) {
        return Container(
          width: logoController.logoSize,
          height: logoController.logoSize,
          child: Stack(
            children: [
              Transform.rotate(
                angle: -logoController.rotate,
                child: Stack(
                  children: [
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement5,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement6,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement7,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement8,
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: logoController.rotate,
                child: Stack(
                  children: [
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement1,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement2,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement3,
                    ),
                    _buildLogoElement(
                      logoController,
                      logoController.logoElement4,
                    ),
                  ],
                ),
              ),
              _buildLogoElement(
                logoController,
                logoController.logoElement0,
              ),
            ],
          ),
        );
      },
    );
  }

  AnimatedPositioned _buildLogoElement(
    LogoController logoController,
    LogoElementModel logoElement,
  ) {
    return AnimatedPositioned(
      left: logoController.started ? logoElement.x : logoController.centerX,
      top: logoController.started ? logoElement.y : logoController.centerY,
      duration: Duration(milliseconds: logoController.duration),
      curve: logoController.curve,
      child: Container(
        width: logoController.rectangleSize,
        height: logoController.rectangleSize,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(logoElement.opacity),
          borderRadius: BorderRadius.circular(logoController.borderRadius),
        ),
      ),
    );
  }
}
