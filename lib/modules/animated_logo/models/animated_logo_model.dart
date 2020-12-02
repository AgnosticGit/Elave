import 'package:elave/index.dart';

class AnimatedLogoModel {
  double logoSize;
  bool started = false;
  bool increased = false;
  Curve curve = Curves.linear;
  int duration = 300;
  double firstStateOpacity = 0.75;
  double secondStageOpacity = 0.5;
  double rotate = 0;
}
