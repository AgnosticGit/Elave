import 'package:elave/index.dart';

class MessagesItem extends StatelessWidget {
  MessagesItem({
    this.text,
    this.senderType,
    this.time,
  });

  final String text;
  final SenderType senderType;
  final DateTime time;

  Widget build(BuildContext context) {
    Alignment alignment = senderType == SenderType.enemy
        ? Alignment.centerLeft
        : Alignment.centerRight;

    return GetBuilder<MessagesItemController>(
      init: MessagesItemController(),
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
                      text + 'sdsdasdkaskdaksldkaskdkjasjkdaksj',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      '22:00',
                      style: TextStyle(
                        color: messagesItemController.gradientDx <= 0
                            ? Colors.white
                            : CustomColors.gray85,
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
