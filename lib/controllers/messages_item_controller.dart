import 'package:elave/index.dart';

class MessagesItemController extends GetxController {
  double gradientDx = 1;
  bool touchDisabled = false;

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    if (!touchDisabled) {
      touchDisabled = true;
      if (dragUpdateDetails.delta.direction > 0) {
        Timer.periodic(Duration(milliseconds: 1), (timer) {
          if (gradientDx <= 0) {
            timer.cancel();
            touchDisabled = false;
          }
          gradientDx -= 0.005;
          update();
        });
      } else {
        Timer.periodic(Duration(milliseconds: 1), (timer) {
          if (gradientDx >= 1) {
            timer.cancel();
            touchDisabled = false;
          }
          gradientDx += 0.005;
          update();
        });
      }
    }
  }
}
