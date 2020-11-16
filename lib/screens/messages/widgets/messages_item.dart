import 'package:elave/index.dart';

class MessagesItem extends StatelessWidget {
  MessagesItem(this.messageModel);

  final MessageModel messageModel;

  Widget build(BuildContext context) {
    Alignment alignment = messageModel.senderType == SenderType.enemy
        ? Alignment.centerLeft
        : Alignment.centerRight;

    return GetBuilder<MessagesItemController>(
      init: MessagesItemController(),
      tag: messageModel.id.toString(),
      builder: (messagesItemController) {
        return Align(
          alignment: alignment,
          child: GestureDetector(
            onHorizontalDragUpdate:
                messagesItemController.onHorizontalDragUpdate,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: CustomColors.gray2B,
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    messagesItemController.gradientDx,
                    messagesItemController.gradientDx,
                  ],
                  colors: [CustomColors.gray2B, Colors.blue],
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
                      messageModel.text,
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
}
