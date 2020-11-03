import 'package:elave/index.dart';

class MessagesController extends GetxController {
  String chatName;

  void setChatName(String name) {
    chatName = name;
    update();
  }
}
