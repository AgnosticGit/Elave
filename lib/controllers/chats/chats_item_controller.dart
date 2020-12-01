import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  ChatModel chat;

  RotatingTileController basketTileController = RotatingTileController();
  RotatingTileController muteTileController = RotatingTileController();
  bool isBlurred = false;

  void openMenu() {
    Get.put(ChatsController()).closeEveryChatMenu();
    basketTileController.showFirstSide();
    muteTileController.showFirstSide();
  }

  void closeMenu() {
    basketTileController.showSecondSide();
    muteTileController.showSecondSide();
  }

  void enableBlur() {
    isBlurred = true;
    update();
  }

  void disableBlur() {
    isBlurred = false;
    update();
  }
}
