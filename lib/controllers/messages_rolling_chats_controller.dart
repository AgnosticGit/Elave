import 'package:elave/index.dart';

class MessagesRollingChatsController extends GetxController {
  final chatState = Get.put(ChatsState()); // Удалить

  double widgetWidth = Get.width * 0.3;
  double get widgetWidthCenter => widgetWidth / 2;

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    print(dragUpdateDetails.delta.dx);
    print(Get.put(ChatsState()).chatsList);
  }

  List<Widget> getChatsList() {
    List<Widget> list = [];

    Get.put(ChatsState()).chatsList.forEach((element) {
      list.add(AnimatedPositioned(
        duration: Duration(milliseconds: 300),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 25.0,
          height: 25.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100.0),
            image: DecorationImage(
              image: NetworkImage(element.chatItemModel.imageLink),
            ),
          ),
        ),
      ));
    });
    return list;
  }
}
