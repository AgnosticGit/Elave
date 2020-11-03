import 'package:elave/index.dart';
//Когда удаляется элемент из массива hashCode функций closeMenu и disableBlur перебрасывается на следующий элемент(не понятно почему). Поэтому я создал дополнительную копию где есть все функции с hashCode.
class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];
  List<ChatsItem> deletedChats = [];

  void onReady() {
    setChatsList();
  }

  void setChatsList() {
    for (int i = 0; i < 70; i++) {
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
