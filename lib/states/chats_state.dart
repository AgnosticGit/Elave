import 'package:elave/index.dart';

class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];
  List<ChatsItem> chatsListCopy = [];

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
    //Когда удаляется элемент из массива hashCode функций closeMenu и disableBlur перебрасывается на следующий элемент(не понятно почему). Поэтому я создал дополнительную копию где есть все функции с hashCode.
    chatsListCopy = chatsList.map((el) => el).toList();
    update();
  }

  void deleteChatListItem(int index) {
    chatsList
        .removeWhere((chatsItem) => chatsItem.chatItemModel.index == index);

    update();
  }
}
