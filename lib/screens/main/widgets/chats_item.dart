import 'package:elave/index.dart';

class ChatsItem extends StatelessWidget {
  ChatsItem(this.index);

  final int index;

  Widget build(BuildContext context) {
    return GetBuilder<ChatsItemController>(
      init: ChatsItemController(),
      builder: (chatsItemController) {
        return GestureDetector(
          onLongPress: () => chatsItemController.openMenu(index),
          onTap: () => chatsItemController.closeMenu(index),
          child: AnimatedAlign(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            child: Container(
              width: Get.width * 0.88,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'John Dohn',
                                        style: TextStyle(
                                          color: CustomColors.blue91,
                                        ),
                                      ),
                                      const SizedBox(width: 5.0),
                                      _buildStatus(),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    'Roll my drum bitch',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                              RollingTile(
                                openTile: (func) =>
                                    chatsItemController.setOpenBasket(func),
                                closeTile: (func) =>
                                    chatsItemController.setCloseBasket(func),
                                duration: Duration(milliseconds: 1),
                                secondSide: _buildMute(),
                              ),
                              RollingTile(
                                openTile: (func) =>
                                    chatsItemController.setOpenMute(func),
                                closeTile: (func) =>
                                    chatsItemController.setCloseMute(func),
                                duration: Duration(milliseconds: 1),
                                firstSide: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '22 aug',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    _buildMessagesCount(100),
                                  ],
                                ),
                                secondSide: _buildBasket(),
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
      child: Column(
        children: [
          Images.basket,
          Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  GestureDetector _buildMute() {
    return GestureDetector(
      child: Column(
        children: [
          Images.basket,
          Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
