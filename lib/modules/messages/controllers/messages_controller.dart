import 'package:elave/index.dart';

class MessagesController extends GetxController {
  ChatModel chat;

  void setChat(ChatModel chatItemModel) {
    chat = chatItemModel;
    update();
  }

  void sendMessage(MessageModel message) {
    Get.put(ChatsState()).addMessage(chat, message);
  }
}
