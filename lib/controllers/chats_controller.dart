import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    Get.put(ChatsState()).deleteChatListItem(index);
  }

  void onTapChatsItem(ChatModel chatItem) {
    Get.put(MessagesController()).setChat(chatItem);
    Get.to(MessagesScreen());
  }

  void closeEveryChatMenu() {
    int length = Get.put(ChatsState()).chatsList.length;
    for (int i = 0; i < length; i++) {
      Get.find<ChatsItemController>(tag: i.toString()).closeMenu();
      Get.find<ChatsItemController>(tag: i.toString()).disableBlur();
    }
  }
}
