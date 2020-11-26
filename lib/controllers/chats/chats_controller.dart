import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int id) {
    Get.put(ChatsState()).deleteChatListItem(id);
  }

  void onTapChatsItem(ChatModel chatItem) {
    Get.put(MessagesController()).setChat(chatItem);
    Get.to(MessagesScreen());
  }

  void closeEveryChatMenu() {
    final chatsList = Get.put(ChatsState()).chatsList;

    for (int i = 0; i < chatsList.length; i++) {
      int id = chatsList[i].id;
      Get.find<ChatsItemController>(tag: id.toString()).closeMenu();
      Get.find<ChatsItemController>(tag: id.toString()).disableBlur();
    }
  }
}
