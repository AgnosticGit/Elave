import 'dart:ui';
import 'package:elave/index.dart';

class Blurred extends StatefulWidget {
  Blurred({
    this.child,
    this.sigmaX = 4.0,
    this.sigmaY = 4.0,
    this.enableFlow = false,
    this.flowSpeed = const Duration(milliseconds: 30),
  });

  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final bool enableFlow;
  final Duration flowSpeed;

  State<Blurred> createState() => _BlurredState(
        sigmaX: sigmaX,
        sigmaY: sigmaY,
        enableFlow: enableFlow,
        flowSpeed: flowSpeed,
      );
}

class _BlurredState extends State<Blurred> {
  _BlurredState({
    this.sigmaX,
    this.sigmaY,
    this.enableFlow,
    this.flowSpeed,
  });

  double sigmaX;
  double sigmaY;
  bool enableFlow;
  double flowSigmaX = 0;
  double flowSigmaY = 0;
  Duration flowSpeed;

  void initState() {
    if (enableFlow) flow();

    super.initState();
  }

  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: flowSigmaX == 0 ? sigmaX : flowSigmaX,
          sigmaY: flowSigmaY == 0 ? sigmaY : flowSigmaY,
        ),
        child: widget.child,
      ),
    );
  }

  void flow() {
    Timer.periodic(flowSpeed, (timer) {
      if (flowSigmaX <= sigmaX && flowSigmaY <= sigmaY) {
        setState(() {
          flowSigmaX += 0.1;
          flowSigmaY += 0.1;
        });
      } else {
        timer.cancel();
      }
    });
  }
}
