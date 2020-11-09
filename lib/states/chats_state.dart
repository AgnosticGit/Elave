import 'package:elave/index.dart';

//Когда удаляется элемент из массива hashCode функций closeMenu и disableBlur перебрасывается на следующий элемент(не понятно почему). Поэтому я создал дополнительную копию где есть все функции с hashCode.
class ChatsState extends GetxController {
  List<ChatsItem> chatsList = [];
  List<ChatsItem> deletedChats = [];

  void onReady() {
    setChatsList();
  }

  void setChatsList() {
    for (int i = 0; i < 10; i++) {
      chatsList.add(
        ChatsItem(
          ChatItemModel(
            name: "Вячеслав Елизарьев",
            lastMessage: 'Where my money',
            unreadMessagesCount: i,
            index: i,
            imageLink: getImageLink(i),
          ),
        ),
      );
    }

    update();
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
    if (index == 9) {
      return 'https://pbs.twimg.com/profile_images/1213118446831050755/CKrJIR1Z_400x400.jpg';
    }
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
