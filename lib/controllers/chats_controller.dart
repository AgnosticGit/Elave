import 'package:elave/index.dart';

class ChatsController extends GetxController {
  void onDeleteChatItem(int index) {
    Get.put(ChatsItemController()).closeEveryChatMenu();
    Get.put(ChatsState()).deleteChatListItem(index);
  }

  void onTapChatsItem(ChatModel chatItem) {
    Get.put(MessagesController()).setChat(chatItem);
    Get.to(MessagesScreen());
  }
}
