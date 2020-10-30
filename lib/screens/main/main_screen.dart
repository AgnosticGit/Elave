import 'package:elave/index.dart';
import 'package:elave/utilities/enums.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),
      builder: (bottomBarController) {
        if (bottomBarController.bottomBarState == BottomBarState.findPeople) {
          return FindPeopleScreen();
        }

        if (bottomBarController.bottomBarState == BottomBarState.chats) {
          return ChatsScreen();
        }

        return SizedBox();
      },
    );
  }
}
