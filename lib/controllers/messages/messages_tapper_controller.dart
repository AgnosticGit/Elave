import 'package:elave/index.dart';

class MessagesTapperController extends GetxController {
  final textEditingController = TextEditingController();
  final translateTileController = RotatingTileController();
  final sendTileController = RotatingTileController();
  TextFieldState textFieldState = TextFieldState.empty;
  bool isAttachVisible = false;
  int maxLines = 1;

  void onTappingText() {
    maxLinesHandler();
    buttonsVisibleHandler();
    update();
  }

  void maxLinesHandler() {
    if (textEditingController.text.length > 30) {
      maxLines = 2;
    } else {
      maxLines = 1;
    }
  }

  void buttonsVisibleHandler() {
    if (textEditingController.text.length > 0) {
      textFieldState = TextFieldState.full;
      translateTileController.showFirstSide();
      sendTileController.showFirstSide();
    } else {
      textFieldState = TextFieldState.empty;
      translateTileController.showSecondSide();
      sendTileController.showSecondSide();
    }
  }

  void attachVisibility() {
    isAttachVisible = !isAttachVisible;
    update();
  }
}
