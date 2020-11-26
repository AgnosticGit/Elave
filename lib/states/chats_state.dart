import 'package:elave/index.dart';

class ChatsState extends GetxController {
  List<ChatModel> chatsList = [];

  void onReady() {
    setChatsList();
    super.onReady();
  }

  void setChatsList() {
    for (int i = 0; i < 9; i++) {
      chatsList.add(
        ChatModel(
          name: "Вячеслав Елизарьев",
          lastMessage: 'Where my money',
          unreadMessagesCount: i,
          index: i,
          id: i,
          imageLink: getImageLink(i),
          messages: getMessages(),
        ),
      );
    }

    update();
  }

  void addMessage(ChatModel chat, MessageModel message) {
    chatsList.forEach((chatItem) {
      if (chat.id == chatItem.id) {
        chatItem.messages.add(message);
      }
    });
    update();
  }

  List<MessageModel> getMessages() {
    List<MessageModel> list = [];

    for (int i = 0; i < 30; i++) {
      list.add(
        MessageModel(
          id: i,
          time: DateTime(0),
          text:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.' +
                  i.toString(),
          senderType: i % 2 == 0 ? SenderType.enemy : SenderType.self,
        ),
      );
    }
    return list.reversed.toList();
  }

  getImageLink(int index) {
    //Удалить
    if (index == 0) {
      return 'https://sun9-55.userapi.com/ZAe4B1Pkk3-AZp6Y-QnQkYCIyA4E32jbL_xbIQ/5gV5s9wwONs.jpg';
    }
    if (index == 1) {
      return 'https://sun9-49.userapi.com/4-RAurusVzxVcSyd7Zf6hg1q5sspFbrtyj76Rw/OP6giOptBA8.jpg';
    }
    if (index == 2) {
      return 'https://sun1.ufanet.userapi.com/c855332/v855332874/ba79e/Tsel7xenQa4.jpg';
    }
    if (index == 3) {
      return 'https://static.wikia.nocookie.net/pokemon/images/4/49/Ash_Pikachu.png/revision/latest?cb=20200405125039';
    }
    if (index == 4) {
      return 'https://vnnews.ru/images/wsscontent/articles/2018/12/bluzhdavshij-po-staroj-russe-bomzh-andryushin-vernjotsya-tuda-gde-teplo-i-kormyat.jpg';
    }
    if (index == 5) {
      return 'https://pbs.twimg.com/profile_images/1206454658778238977/cl8-uRQO.jpg';
    }
    if (index == 6) {
      return 'https://i.pinimg.com/474x/06/01/64/0601649d29f6d18a7bdbc8fbfe9c50f9.jpg';
    }
    if (index == 7) {
      return 'https://pbs.twimg.com/profile_images/965976708817006594/gNDL6bRU.jpg';
    }
    if (index == 8) {
      return 'https://pbs.twimg.com/profile_images/1213118446831050755/CKrJIR1Z_400x400.jpg';
    }
  }

  void deleteChatListItem(int id) {
    chatsList.removeWhere((chatsItem) => chatsItem.id == id);
    chatsList.asMap().forEach((index, chatsItem) => chatsItem.index = index);
    update();
  }
}
