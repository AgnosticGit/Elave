class ChatItemModel {
  ChatItemModel({
    this.name,
    this.lastMessage,
    this.unreadMessagesCount,
    this.index,
    this.imageLink,
  });

  String name;
  String lastMessage;
  int unreadMessagesCount;
  int index;
  String imageLink;
    // TODO Date
}
