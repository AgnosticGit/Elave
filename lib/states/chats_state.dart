import 'package:elave/index.dart';

//Когда удаляется элемент из массива hashCode функций closeMenu и disableBlur перебрасывается на следующий элемент(не понятно почему). Поэтому я создал дополнительную копию где есть все функции с hashCode.
class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];
  List<ChatsItem> deletedChats = [];

  void onReady() {
    setChatsList();
  }

  void setChatsList() {
    for (int i = 0; i < 3; i++) {
      chatsList.add(
        ChatsItem(
          ChatItemModel(
            name: "Вячеслав Елизарьев",
            lastMessage: 'Where my money',
            unreadMessagesCount: i,
            index: i,
            imageLink:
                'https://sun9-55.userapi.com/ZAe4B1Pkk3-AZp6Y-QnQkYCIyA4E32jbL_xbIQ/5gV5s9wwONs.jpg',
          ),
        ),
      );
    }

    update();
  }

  void deleteChatListItem(int index) {
    chatsList.removeWhere((chatsItem) {
      if (chatsItem.chatItemModel.index == index) {
        deletedChats.add(chatsItem);
        return true;
      }
      return false;
    });

    update();
  }
}
