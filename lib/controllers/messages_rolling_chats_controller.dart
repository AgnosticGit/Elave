import 'package:elave/index.dart';

class MessagesRollingChatsController extends GetxController {
  final chatState = Get.put(ChatsState()); // Удалить

  double widgetWidth = Get.width;
  double maxItemSize = 40.0;
  double get widgetWidthCenter => widgetWidth / 2;
  List<double> positions = [0, 40, 80, 120, 160, 200, 240, 280, 320];

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    // print(dragUpdateDetails.delta.dx);
    positions = positions.map((element) {
      element += dragUpdateDetails.delta.dx;
      return element;
    }).toList();
    update();
  }

  void onInit() {}

  List<Widget> getChatsList() {
    final chatsList = Get.put(ChatsState()).chatsList;
    List<Widget> list = [];

    for (int i = 0; i < chatsList.length; i++) {
      list.add(AnimatedPositioned(
        left: positions[i] <= 0 ? 0 : positions[i],
        duration: Duration(milliseconds: 200),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: getItemSize(positions[i]) <= 0 ? 0 : getItemSize(positions[i]),
          height:
              getItemSize(positions[i]) <= 0 ? 0 : getItemSize(positions[i]),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(chatsList[i].chatItemModel.imageLink),
            ),
          ),
        ),
      ));
    }
    return list;
  }

  double getItemSize(double position) {
    // if (position <= widgetWidthCenter) {
    //   return ;
    // }
    return 80 - (widgetWidthCenter / position);
  }
}
