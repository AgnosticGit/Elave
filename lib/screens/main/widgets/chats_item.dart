import 'dart:ui';
import 'package:elave/index.dart';

class ChatsItem extends StatefulWidget {
  ChatsItem(this.chatItemModel);

  final ChatItemModel chatItemModel;

  State<StatefulWidget> createState() => ChatsItemState();
}

class ChatsItemState extends State<ChatsItem> {
  Widget build(BuildContext context) {
    return GetBuilder<ChatsItemController>(
      init: ChatsItemController(),
      builder: (chatsItemController) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onLongPress: () {
                  chatsItemController.openMenu(widget.chatItemModel.index);
                },
                onTap: () {
                  chatsItemController.closeMenu(widget.chatItemModel.index);
                },
                child: Container(
                  child: Row(
                    children: [
                      _buildAvatar(),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: Container(
                          height: 80.0,
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
                                            widget.chatItemModel.name,
                                            style: TextStyle(
                                              color: CustomColors.blue91,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        widget.chatItemModel.lastMessage,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RollingTile(
                                        openTile: (func) {
                                          chatsItemController.setOpenBasket(
                                              func, widget.chatItemModel.index);
                                        },
                                        closeTile: (func) {
                                          chatsItemController.setCloseBasket(
                                              func, widget.chatItemModel.index);
                                        },
                                        duration: Duration(milliseconds: 1),
                                        secondSide: _buildMute(),
                                      ),
                                      const SizedBox(width: 5.0),
                                      RollingTile(
                                        openTile: (func) {
                                          chatsItemController.setOpenMute(
                                              func, widget.chatItemModel.index);
                                        },
                                        closeTile: (func) {
                                          chatsItemController.setCloseMute(
                                              func, widget.chatItemModel.index);
                                        },
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
                                              widget.chatItemModel
                                                  .unreadMessagesCount,
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
          'https://sun9-55.userapi.com/ZAe4B1Pkk3-AZp6Y-QnQkYCIyA4E32jbL_xbIQ/5gV5s9wwONs.jpg',
          height: 60.0,
          width: 60.0,
        ),
      ),
    );
  }

  Widget _buildStatus() {
    return Container(
      alignment: Alignment.center,
      width: 40.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: CustomColors.green00,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        'Online',
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
        ),
      ),
    );
  }

  Widget _buildMessagesCount(int messagesCount) {
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
      onTap: () {
        Get.put(ChatsItemController())
            .enableBlurOnItem(widget.chatItemModel.index);
      },
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
    final chatsItemController = Get.put(ChatsItemController());

    if (chatsItemController.blurredItemIndex == widget.chatItemModel.index) {
      return ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
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
                          Get.put(ChatsController())
                              .onDeleteChatItem(widget.chatItemModel.index);
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
                        onPressed: () {
                          chatsItemController
                              .disableBlurOnItem(widget.chatItemModel.index);
                        },
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
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
