import 'package:elave/index.dart';

class ChatModel {
  ChatModel({
    @required this.name,
    @required this.lastMessage,
    @required this.unreadMessagesCount,
    @required this.index,
    @required this.id,
    @required this.messages,
    this.imageLink,
  });

  String name;
  String lastMessage;
  int unreadMessagesCount;
  int index;
  String imageLink;
  int id;
  List<MessageModel> messages;
  // TODO Date
}
