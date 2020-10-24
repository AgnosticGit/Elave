import 'package:elave/index.dart';

class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];

  void setChatsList() {
    for (int i = 0; i < 20; i++) {
      chatsList.add(
        ChatsItem(
          ChatItemModel(
            name: "Вячеслав Елизарьев",
            lastMessage: 'Where my money',
            unreadMessagesCount: 10,
            index: i,
          ),
        ),
      );
    }
    update();
  }
}
