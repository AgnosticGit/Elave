import 'package:elave/index.dart';
import 'package:elave/utilities/enums.dart';

class BottomBarController extends GetxController {
  BottomBarState bottomBarState = BottomBarState.chats;

  void selectChats() {
    bottomBarState = BottomBarState.chats;
    update();
  }

  void selectFindPeople() {
    bottomBarState = BottomBarState.findPeople;
    update();
  }
}
