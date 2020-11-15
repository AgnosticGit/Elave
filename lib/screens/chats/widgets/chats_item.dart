import 'dart:ui';
import 'package:elave/index.dart';

// ignore: must_be_immutable
class ChatsItem extends StatefulWidget {
  ChatsItem(this.chatModel);

  final ChatModel chatModel;

  _ChatsItemState chatsItemState = _ChatsItemState();

  Function get openMenu => chatsItemState.openMenu;
  Function get closeMenu => chatsItemState.closeMenu;
  Function get enableBlur => chatsItemState.enableBlur;
  Function get disableBlur => chatsItemState.disableBlur;

  State<ChatsItem> createState() => chatsItemState = _ChatsItemState();
}

class _ChatsItemState extends State<ChatsItem> {
  Function openBasket;
  Function openMute;
  Function closeBasket;
  Function closeMute;
  bool isBlurred = false;

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          child: GestureDetector(
            onLongPress: openMenu,
            onTap: () {
              print(widget.chatModel.messages);
              Get.put(ChatsController()).onTapChatsItem(widget.chatModel);
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        widget.chatModel.name ?? '',
                                        style: TextStyle(
                                          color: CustomColors.blue91,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    widget.chatModel.lastMessage ?? '',
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
                                    openTile: (func) => openBasket = func,
                                    closeTile: (func) => closeBasket = func,
                                    duration: Duration(milliseconds: 1),
                                    secondSide: _buildMute(),
                                  ),
                                  const SizedBox(width: 5.0),
                                  RotatingTile(
                                    openTile: (func) => openMute = func,
                                    closeTile: (func) => closeMute = func,
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
                                          widget.chatModel.unreadMessagesCount,
                                        ),
                                      ],
                                    ),
                                    secondSide: _buildBasket(),
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
        _buildDeleteConfirmation(),
      ],
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
          widget.chatModel.imageLink,
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

  GestureDetector _buildBasket() {
    return GestureDetector(
      onTap: enableBlur,
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

  Widget _buildDeleteConfirmation() {
    if (isBlurred) {
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
                          widget.chatModel.index,
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
                      onPressed: disableBlur,
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

  void openMenu() {
    Get.put(ChatsController()).closeEveryChatMenu();
    openBasket();
    openMute();
  }

  void closeMenu() {
    if (this.mounted) {
      closeBasket();
      closeMute();
    }
  }

  void enableBlur() {
    if (this.mounted) {
      setState(() {
        isBlurred = true;
      });
    }
  }

  void disableBlur() {
    if (this.mounted) {
      setState(() {
        isBlurred = false;
      });
    }
  }
}
