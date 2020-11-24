import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  ChatModel chat;

  RotatingTileController basketTileController = RotatingTileController();
  RotatingTileController muteTileController = RotatingTileController();
  bool isBlurred = false;

  void openMenu() {
    Get.put(ChatsController()).closeEveryChatMenu();
    basketTileController.openTile();
    muteTileController.openTile();
  }

  void closeMenu() {
    basketTileController.closeTile();
    muteTileController.closeTile();
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
