import 'package:elave/index.dart';

class MessagesRollingChatsController extends GetxController {
  double widgetWidth = Get.width * 0.3;
  double maxItemSize = 40.0;
  double get widgetWidthCenter => widgetWidth / 2;
  List<double> positions = [];

  //Формирование списка элементов
  void onInit() {
    final chatsList = Get.put(ChatsState()).chatsList;
    for (double i = 0; i < chatsList.length; i++) {
      positions.add(widgetWidth / 2.8 * i);
    }
  }

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    positions = positions.map((pos) {
      pos += dragUpdateDetails.delta.dx;
      return pos;
    }).toList();
    update();
  }

  //Привязка ближайшего к центру элемента
  void onHorizontalDragEnd(DragEndDetails dragEndDetails) {
    int index = positions.indexWhere((pos) {
      if (pos < widgetWidthCenter + maxItemSize &&
          pos > widgetWidthCenter - maxItemSize) {
        return true;
      }
      return false;
    });
    shiftWidgetToCenter(index);
  }

  void shiftWidgetToCenter(int index) {
    double diffPositionAndCenter = (positions[index] - widgetWidthCenter).abs();

    if (positions[index] > widgetWidthCenter) {
      positions = positions.map((pos) {
        pos -= diffPositionAndCenter;
        return pos;
      }).toList();
    }

    if (positions[index] < widgetWidthCenter) {
      positions = positions.map((pos) {
        pos += diffPositionAndCenter;
        return pos;
      }).toList();
    }
    update();
  }

  //Формирует массив виджетов
  List<Widget> getRollingChatsList() {
    final chatsList = Get.put(ChatsState()).chatsList;
    List<Widget> list = [];

    for (int i = 0; i < chatsList.length; i++) {
      Border border;

      if (positions[i] >= widgetWidthCenter - maxItemSize / 2 &&
          positions[i] <= widgetWidthCenter) {
        border = Border.all(color: Colors.white, width: 1.5);
      }

      list.add(
        AnimatedPositioned(
          left: positions[i].abs(),
          duration: Duration(milliseconds: 200),
          child: GestureDetector(
            onTap: () => shiftWidgetToCenter(chatsList[i].chatItemModel.index),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: positions[i].isNegative ? 0.5 : 1,
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
          ),
        ),
      );
    }
    return list;
  }

  //Регулирует отображение размера элемента по отношению к центру
  double getItemSize(double position) {
    double powing = 0.2;
    double coef = pow(widgetWidthCenter, powing) / maxItemSize;

    if (position <= 0 || position >= widgetWidth) {
      return maxItemSize / 2;
    }

    if (position <= widgetWidthCenter) {
      return pow(position, powing) / coef;
    }

    return pow(widgetWidth - position, powing) / coef;
  }
}
