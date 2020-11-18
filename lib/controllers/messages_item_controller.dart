import 'package:elave/index.dart';

class MessagesItemController extends GetxController {
  MessageModel message;

  double gradientDx = 1;
  bool dragEnabled = true;
  bool translatedTextIsVisible = false;

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    if (message.senderType == SenderType.enemy && dragEnabled) {
      if (dragUpdateDetails.delta.direction > 0) {
        onTranslate();
      } else {
        onUntranslate();
      }
    }
  }

  void onTranslate() {
    fillIn();

    Future.delayed(Duration(seconds: 2), () {
      message.translatedText =
          'Lorem Ipsum - это текст-"рыба", часто используемый в печати и вэб-дизайне.';
      showTranslatedText();
      update();
    });
  }

  void onUntranslate() {
    fillOut();
    hideTranslatedText();
  }

  void fillIn() {
    disableDrag();
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      if (gradientDx <= 0) {
        timer.cancel();
        enableDrag();
      }
      gradientDx -= 0.005;
      update();
    });
  }

  void fillOut() {
    disableDrag();
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      if (gradientDx >= 1) {
        timer.cancel();
        enableDrag();
      }
      gradientDx += 0.005;
      update();
    });
  }

  void disableDrag() {
    dragEnabled = false;
  }

  void enableDrag() {
    dragEnabled = true;
  }

  void showTranslatedText() {
    translatedTextIsVisible = true;
    update();
  }

  void hideTranslatedText() {
    translatedTextIsVisible = false;
    update();
  }
}
