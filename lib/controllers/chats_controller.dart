import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    closeEveryChatMenu();
    Get.put(ChatsState()).deleteChatListItem(index);
  }

  void onTapChatsItem(ChatItemModel chatItem) {
    closeEveryChatMenu();
    Get.put(MessagesController()).setChatName(chatItem.name);
    Get.to(MessagesScreen());
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
}
