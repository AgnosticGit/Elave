import 'package:elave/index.dart';

class MessagesItem extends StatelessWidget {
  MessagesItem(this.message);

  final MessageModel message;

  Widget build(BuildContext context) {
    final messagesItemController = Get.put(
      MessagesItemController(),
      tag: message.id.toString(),
    );
    messagesItemController.message = message;

    return GetBuilder<MessagesItemController>(
      key: UniqueKey(),
      init: MessagesItemController(),
      tag: message.id.toString(),
      builder: (_) {
        if (message.imageLinks != null) {
          return Align(
            alignment: _buildAlignment(),
            child: GestureDetector(
              child: Container(),
            ),
          );
        }

        return Align(
          alignment: _buildAlignment(),
          child: GestureDetector(
            onHorizontalDragUpdate: messagesItemController.onHorizontalDragUpdate,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    messagesItemController.gradientDx,
                    messagesItemController.gradientDx,
                  ],
                  colors: [_buildMainColor(), Colors.blue],
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: Get.width * 0.7),
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      messagesItemController.translatedTextIsVisible
                          ? message.translatedText
                          : message.text,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '22:00',
                      style: TextStyle(
                        color: messagesItemController.gradientDx >= 1
                            ? CustomColors.gray85
                            : Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Alignment _buildAlignment() {
    if (message.senderType == SenderType.enemy) {
      return Alignment.centerLeft;
    } else {
      return Alignment.centerRight;
    }
  }

  Color _buildMainColor() {
    if (message.senderType == SenderType.enemy) {
      return CustomColors.gray2B;
    } else {
      return CustomColors.blue36;
    }
  }
}
