import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  Function openBasket;
  Function openMute;
  Function closeBasket;
  Function closeMute;
  bool isBlurred = false;

  void openMenu() {
    closeEveryChatMenu();
    openBasket();
    openMute();
  }

  void closeMenu() {
    closeBasket();
    closeMute();
  }

  void enableBlur() {
    isBlurred = true;
    update();
  }

  void disableBlur() {
    isBlurred = false;
    update();
  }

  void closeEveryChatMenu() {
    int length = Get.put(ChatsState()).chatsList.length;
    for (int i = 0; i < length; i++) {
      Get.find<ChatsItemController>(tag: i.toString()).closeMenu();
      Get.find<ChatsItemController>(tag: i.toString()).disableBlur();
    }
  }
}
