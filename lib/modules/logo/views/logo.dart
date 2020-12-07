import 'package:elave/index.dart';

class Logo extends StatelessWidget {
  Logo({this.logoSize = 160.0});

  final double logoSize;

  Widget build(BuildContext context) {
    return GetBuilder<LogoState>(
      initState: (_) {
        Get.put(LogoState(logoSize: logoSize));
        LogoController().onInit();
      },
      builder: (_) {
        return Container(
          width: LogoState.to.logoSize,
          height: LogoState.to.logoSize,
          child: Stack(
            children: [
              Transform.rotate(
                angle: -LogoState.to.logoView.rotate,
                child: Stack(
                  children: [
                    _buildLogoElement(LogoState.to.logoView.logoElement5),
                    _buildLogoElement(LogoState.to.logoView.logoElement6),
                    _buildLogoElement(LogoState.to.logoView.logoElement7),
                    _buildLogoElement(LogoState.to.logoView.logoElement8),
                  ],
                ),
              ),
              Transform.rotate(
                angle: LogoState.to.logoView.rotate,
                child: Stack(
                  children: [
                    _buildLogoElement(LogoState.to.logoView.logoElement1),
                    _buildLogoElement(LogoState.to.logoView.logoElement2),
                    _buildLogoElement(LogoState.to.logoView.logoElement3),
                    _buildLogoElement(LogoState.to.logoView.logoElement4),
                  ],
                ),
              ),
              _buildLogoElement(LogoState.to.logoView.logoElement0),
            ],
          ),
        );
      },
    );
  }

  AnimatedPositioned _buildLogoElement(LogoElementModel logoElement) {
    return AnimatedPositioned(
      left:
          LogoState.to.logoView.started ? logoElement.x : LogoState.to.centerX,
      top: LogoState.to.logoView.started ? logoElement.y : LogoState.to.centerY,
      duration: Duration(milliseconds: LogoState.to.logoView.duration),
      curve: LogoState.to.logoView.curve,
      child: Container(
        width: LogoState.to.rectangleSize,
        height: LogoState.to.rectangleSize,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(logoElement.opacity),
          borderRadius: BorderRadius.circular(LogoState.to.borderRadius),
        ),
      ),
    );
  }
}
