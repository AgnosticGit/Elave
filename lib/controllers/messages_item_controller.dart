import 'package:elave/index.dart';

class MessagesItemController extends GetxController {
  double gradientDx = 1;
  bool touchEnabled = true;

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    if (dragUpdateDetails.delta.direction > 0) {
      fillIn();
    } else {
      fillOut();
    }
  }

  void fillIn() {
    if (touchEnabled) {
      touchEnabled = false;
      Timer.periodic(Duration(milliseconds: 1), (timer) {
        if (gradientDx <= 0) {
          timer.cancel();
          touchEnabled = true;
        }
        gradientDx -= 0.005;
        update();
      });
    }
  }

  void fillOut() {
    if (touchEnabled) {
      touchEnabled = false;
      Timer.periodic(Duration(milliseconds: 1), (timer) {
        if (gradientDx >= 1) {
          timer.cancel();
          touchEnabled = true;
        }
        gradientDx += 0.005;
        update();
      });
    }
  }
}
