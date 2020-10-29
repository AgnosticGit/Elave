import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    closeEveryChatMenu();
    Get.put(ChatsState()).deleteChatListItem(index);
  }

  void closeEveryChatMenu() { 
    Get.put(ChatsState()).chatsListCopy.forEach((chatsItem) {
      chatsItem.disableBlur();
      chatsItem.closeMenu();
    });
    update();
  }
}
