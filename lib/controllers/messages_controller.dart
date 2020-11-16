import 'package:elave/index.dart';

class MessagesController extends GetxController {
  ChatModel chat;

  void setChat(ChatModel chatItemModel) {
    chat = chatItemModel;
    update();
  }
  void onReady(){
    super.onReady();
  }
}
