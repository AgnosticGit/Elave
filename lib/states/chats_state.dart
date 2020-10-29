import 'package:elave/index.dart';

class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];

  void onReady() {
    setChatsList();
  }

  void setChatsList() {
    for (int i = 0; i < 7; i++) {
      chatsList.add(
        ChatsItem(
          ChatItemModel(
            name: "Вячеслав Елизарьев",
            lastMessage: 'Where my money',
            unreadMessagesCount: i,
            index: i,
          ),
        ),
      );
    }
    update();
  }

  void deleteChatListItem(int index) {
    chatsList
        .removeWhere((chatsItem) => chatsItem.chatItemModel.index == index);

    update();
  }
}
