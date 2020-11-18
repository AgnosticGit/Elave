import 'dart:ui';
import 'package:elave/index.dart';

class ChatsItem extends StatelessWidget {
  ChatsItem(this.chat);

  final ChatModel chat;

  Widget build(BuildContext context) {
    final chatsItemController = Get.put(
      ChatsItemController(),
      tag: chat.id.toString(),
    );
    chatsItemController.chat = chat;

    return GetBuilder<ChatsItemController>(
      key: UniqueKey(),
      tag: chat.id.toString(),
      builder: (_) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
              child: GestureDetector(
                onLongPress: chatsItemController.openMenu,
                onTap: () {
                  Get.put(ChatsController()).onTapChatsItem(chat);
                },
                child: Container(
                  child: Row(
                    children: [
                      _buildAvatar(),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: Container(
                          height: 75.0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: CustomColors.blue3D),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            chat.name ?? '',
                                            style: TextStyle(
                                              color: CustomColors.blue91,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        chat.lastMessage ?? '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RotatingTile(
                                        openTile: (func) => chatsItemController
                                            .openBasket = func,
                                        closeTile: (func) => chatsItemController
                                            .closeBasket = func,
                                        duration: Duration(milliseconds: 1),
                                        secondSide: _buildMute(),
                                      ),
                                      const SizedBox(width: 5.0),
                                      RotatingTile(
                                        openTile: (func) =>
                                            chatsItemController.openMute = func,
                                        closeTile: (func) => chatsItemController
                                            .closeMute = func,
                                        duration: Duration(milliseconds: 1),
                                        firstSide: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '22 aug',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5.0),
                                            _buildMessagesCount(
                                              chat.unreadMessagesCount,
                                            ),
                                          ],
                                        ),
                                        secondSide: _buildBasket(
                                          chatsItemController,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            _buildDeleteConfirmation(chatsItemController),
          ],
        );
      },
    );
  }

  Widget _buildAvatar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.network(
          chat.imageLink,
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildMessagesCount(int messagesCount) {
    if (messagesCount == 0 || messagesCount == null) {
      return SizedBox(
        width: 21.0,
        height: 21.0,
      );
    }

    double fontSize = messagesCount < 10 ? 12 : 10;
    String count = messagesCount < 100 ? messagesCount.toString() : "99+";

    return Container(
      alignment: Alignment.center,
      width: 21.0,
      height: 21.0,
      decoration: BoxDecoration(
        color: CustomColors.purple95,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Text(
        count,
        style: TextStyle(color: Colors.white, fontSize: fontSize),
      ),
    );
  }

  GestureDetector _buildBasket(ChatsItemController chatsItemController) {
    return GestureDetector(
      onTap: chatsItemController.enableBlur,
      child: Container(
        height: 43.0,
        width: 43.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColors.blue36,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 15.0,
              height: 15.0,
              child: Images.basket,
            ),
            Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _buildMute() {
    return GestureDetector(
      child: Container(
        height: 43.0,
        width: 43.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColors.blue36,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 15.0,
              height: 15.0,
              child: Images.mute,
            ),
            Text(
              'Mute',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDeleteConfirmation(ChatsItemController chatsItemController) {
    if (chatsItemController.isBlurred) {
      return Blurred(
        sigmaX: 2.0,
        sigmaY: 2.0,
        enableFlow: true,
        child: Container(
          height: 80.0,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you sure?',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.0,
                    width: 80.0,
                    child: RaisedButton(
                      onPressed: () {
                        Get.put(ChatsController()).onDeleteChatItem(
                          chat.index,
                        );
                      },
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  SizedBox(
                    height: 30.0,
                    width: 80.0,
                    child: RaisedButton(
                      onPressed: chatsItemController.disableBlur,
                      color: CustomColors.blue16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
