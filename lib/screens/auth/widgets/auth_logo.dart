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
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement0,
                0,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement1,
                authLogoController.firstStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement2,
                authLogoController.firstStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement3,
                authLogoController.firstStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement4,
                authLogoController.firstStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement5,
                authLogoController.secondStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement6,
                authLogoController.secondStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement7,
                authLogoController.secondStageDuration,
              ),
              _buildLogoElement(
                authLogoController,
                authLogoController.logoElement8,
                authLogoController.secondStageDuration,
              ),
            ],
          ),
        );
      },
    );
  }

  AnimatedPositioned _buildLogoElement(
    AuthLogoController authLogoController,
    LogoElementModel logoElement,
    int duration,
  ) {
    return AnimatedPositioned(
      left: authLogoController.started
          ? logoElement.x
          : authLogoController.centerX,
      top: authLogoController.started
          ? logoElement.y
          : authLogoController.centerY,
      duration: Duration(milliseconds: duration),
      curve: authLogoController.curve,
      child: Container(
        alignment: Alignment.center,
        width: authLogoController.rectangleSize,
        height: authLogoController.rectangleSize,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(logoElement.opacity),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
