import 'package:elave/index.dart';
import 'package:elave/utilities/enums.dart';

class BottomBarController extends GetxController {
  BottomBarItems bottomBarItems = BottomBarItems.chats;

  void selectChats() {
    bottomBarItems = BottomBarItems.chats;
    update();
  }

  void selectFindPeople() {
    bottomBarItems = BottomBarItems.findPeople;
    update();
  }
}
