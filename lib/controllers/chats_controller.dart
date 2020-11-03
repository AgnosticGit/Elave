import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    closeEveryChatMenu();
    Get.put(ChatsState()).deleteChatListItem(index);
  }

  void onTapChatsItem(ChatItemModel chatItem) {
    print(checkAllMenuClosed());
    if (checkAllMenuClosed()) {
      Get.put(MessagesController()).setChatName(chatItem.name);
      Get.to(MessagesScreen());
    }
    // closeEveryChatMenu();
  }

  void closeEveryChatMenu() {
    Get.put(ChatsState()).chatsList.forEach((chatsItem) {
      chatsItem.disableBlur();
      chatsItem.closeMenu();
    });
    Get.put(ChatsState()).deletedChats.forEach((chatsItem) {
      chatsItem.disableBlur();
      chatsItem.closeMenu();
    });
    update();
  }

  bool checkAllMenuClosed() {
    for (final chatsItem in Get.put(ChatsState()).chatsList) {
      if (chatsItem.isMenuOpened) {
        return false;
      }
    }
    for (final chatsItem in Get.put(ChatsState()).deletedChats) {
      if (chatsItem.isMenuOpened) {
        return false;
      }
    }
    return true;
  }
}
