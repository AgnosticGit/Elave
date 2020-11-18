import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  ChatModel chat;
  
  Function openBasket;
  Function openMute;
  Function closeBasket;
  Function closeMute;
  bool isBlurred = false;

  void openMenu() {
    Get.put(ChatsController()).closeEveryChatMenu();
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
}
