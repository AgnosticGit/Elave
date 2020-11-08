import 'package:elave/index.dart';

class MessagesController extends GetxController {
  ChatItemModel chat;

  void setChat(ChatItemModel chatItemModel) {
    chat = chatItemModel;
    update();
  }
}
