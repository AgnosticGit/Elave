import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    //TODO Delete from backend function
  }

  void closeEveryChatMenu() {
    Get.put(ChatsState()).chatsList.forEach((chatsItem) {
      chatsItem.closeMenu();
      chatsItem.disableBlur();
    });
  }
}
