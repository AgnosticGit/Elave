import 'dart:ui';
import 'package:elave/index.dart';

class BottomBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Blurred(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.white),
                color: Colors.white.withOpacity(0.1),
              ),
              child: GetBuilder<BottomBarController>(
                init: BottomBarController(),
                builder: (bottomBarController) {
                  return Row(
                    children: [
                      _buildFindPeople(),
                      _buildChats(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFindPeople() {
    return GestureDetector(
      onTap: Get.put(BottomBarController()).selectFindPeople,
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 60.0,
        width: 130.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildFindPeopleImage(),
            _buildFindPeopleText(),
          ],
        ),
      ),
    );
  }

  Widget _buildChats() {
    return GestureDetector(
      onTap: Get.put(BottomBarController()).selectChats,
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 60.0,
        width: 110.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildChatsImage(),
            _buildChatsText(),
          ],
        ),
      ),
    );
  }

  SvgPicture _buildFindPeopleImage() {
    final bottomBarItems = Get.put(BottomBarController()).bottomBarState;

    if (bottomBarItems == BottomBarState.findPeople) {
      return Images.humansWhite;
    } else {
      return Images.humans;
    }
  }

  Text _buildFindPeopleText() {
    final bottomBarItems = Get.put(BottomBarController()).bottomBarState;

    if (bottomBarItems == BottomBarState.findPeople) {
      return Text(
        'Find People',
        style: TextStyle(color: CustomColors.blue91),
      );
    } else {
      return Text(
        'Find People',
        style: TextStyle(color: CustomColors.blue54),
      );
    }
  }

  Text _buildChatsText() {
    final bottomBarItems = Get.put(BottomBarController()).bottomBarState;

    if (bottomBarItems == BottomBarState.chats) {
      return Text(
        'Chats',
        style: TextStyle(color: CustomColors.blue91),
      );
    } else {
      return Text(
        'Chats',
        style: TextStyle(color: CustomColors.blue54),
      );
    }
  }

  SvgPicture _buildChatsImage() {
    final bottomBarItems = Get.put(BottomBarController()).bottomBarState;

    if (bottomBarItems == BottomBarState.chats) {
      return Images.cloudWhite;
    } else {
      return Images.cloud;
    }
  }
}
