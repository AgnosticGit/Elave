import 'package:elave/index.dart';

class MessagesRollingChatsController extends GetxController {
  List<double> positions = [];
  double widgetWidth = Get.width * 0.3;
  double maxItemSize = 40.0;
  double get widgetWidthCenter => widgetWidth / 2;
  int get selectedItemIndex => positions.indexWhere((pos) {
        if (pos < widgetWidthCenter + maxItemSize &&
            pos > widgetWidthCenter - maxItemSize) {
          return true;
        }
        return false;
      });

  //Формирование списка элементов
  void onInit() {
    super.onInit();
    final chatsList = Get.put(ChatsState()).chatsList;

    for (double i = 0; i < chatsList.length; i++) {
      positions.add(widgetWidth / 2.8 * i);
    }

    shiftElementToCenter(Get.put(MessagesController()).chat.index);
  }

  void onHorizontalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    scrollLenta(dragUpdateDetails);
  }

  void scrollLenta(DragUpdateDetails dragUpdateDetails) {
    positions = positions.map((pos) {
      double shiftByX = dragUpdateDetails.delta.dx;

      if (shiftByX.isNegative && selectedItemIndex != positions.length - 1) {
        pos -= shiftByX.abs();
      }

      if (!shiftByX.isNegative && selectedItemIndex != 0) {
        pos += shiftByX;
      }

      return pos;
    }).toList();
    update();
  }

  void onHorizontalDragEnd(DragEndDetails dragEndDetails) {
    snapElementToCenter();
  }

  //Привязка ближайшего к центру элемента
  void snapElementToCenter() {
    shiftElementToCenter(selectedItemIndex);
  }

  void shiftElementToCenter(int index) {
    double diffPositionAndCenter = (positions[index] - widgetWidthCenter).abs();

    if (positions[index] > widgetWidthCenter) {
      positions = positions.map((pos) {
        pos -= diffPositionAndCenter;
        return pos;
      }).toList();
    } else {
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
          positions[i] <= widgetWidthCenter + maxItemSize / 2) {
        border = Border.all(color: Colors.white, width: 1.5);
      }

      list.add(
        AnimatedPositioned(
          left: positions[i].abs(),
          duration: Duration(milliseconds: 200),
          child: GestureDetector(
            onTap: () => shiftElementToCenter(chatsList[i].chatModel.index),
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
                    image: NetworkImage(chatsList[i].chatModel.imageLink),
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

    if (position < 0 || position >= widgetWidth) {
      return maxItemSize / 2;
    }

    if (position <= widgetWidthCenter) {
      return pow(position, powing) / coef;
    }

    return pow(widgetWidth - position, powing) / coef - maxItemSize / 4;
  }
}
