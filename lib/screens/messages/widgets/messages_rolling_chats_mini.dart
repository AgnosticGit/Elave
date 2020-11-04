import 'package:elave/controllers/messages_rolling_chats_controller.dart';
import 'package:elave/index.dart';

class MessagesRollingChatsMini extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<MessagesRollingChatsController>(
      init: MessagesRollingChatsController(),
      builder: (rollingChatsController) {
        return GestureDetector(
          onHorizontalDragUpdate: rollingChatsController.onHorizontalDragUpdate,
          child: Container(
            color: Colors.green,
            width: rollingChatsController.widgetWidth,
            height: kToolbarHeight,
            child: Stack(
              alignment: Alignment.center,
              children: rollingChatsController.getChatsList()
            ),
          ),
        );
      },
    );
  }
}
