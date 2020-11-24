import 'package:elave/index.dart';

class MessagesTapperController extends GetxController {
  final textEditingController = TextEditingController();
  TextFieldState textFieldState = TextFieldState.empty;
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
    } else {
      textFieldState = TextFieldState.empty;
    }
  }
}
