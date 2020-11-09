import 'package:elave/index.dart';

class MessagesRollingChatsController extends GetxController {
  double widgetWidth = Get.width * 0.3;
  double maxItemSize = 40.0;
  double get widgetWidthCenter => widgetWidth / 2;
  List<double> positions = [];

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    positions = positions.map((element) {
      element += dragUpdateDetails.delta.dx;
      return element;
    }).toList();
    update();
  }

  void onInit() {
    final chatsList = Get.put(ChatsState()).chatsList;
    for (double i = 0; i < chatsList.length; i++) {
      positions.add(widgetWidth / 2.8 * i);
    }
  }

  List<Widget> getRollingChatsList() {
    final chatsList = Get.put(ChatsState()).chatsList;
    List<Widget> list = [];

    for (int i = 0; i < chatsList.length; i++) {
      Border border;

      if (positions[i] >= widgetWidthCenter - 20 &&
          positions[i] <= widgetWidthCenter + 20) {
        border = Border.all(color: Colors.white, width: 1.5);
      }

      list.add(
        AnimatedPositioned(
          left: positions[i].abs(),
          duration: Duration(milliseconds: 200),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: getItemSize(positions[i]),
            height: getItemSize(positions[i]),
            decoration: BoxDecoration(
              border: border,
              borderRadius: BorderRadius.circular(100.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(chatsList[i].chatItemModel.imageLink),
              ),
            ),
          ),
        ),
      );
    }
    return list;
  }

  double getItemSize(double position) {
    if (position <= 0 || position >= widgetWidth) {
      return maxItemSize / 2;
    }
    double powing = 0.2;
    double coof = pow(widgetWidthCenter, powing) / maxItemSize;

    if (position <= widgetWidthCenter) {
      return pow(position, powing) / coof;
    }
    return pow(widgetWidth - position, powing) / coof;
  }
}
