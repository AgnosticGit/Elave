import 'package:elave/modules/messages/controllers/messages_rolling_chats_controller.dart';
import 'package:elave/index.dart';

class MessagesRollingChatsMini extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<MessagesRollingChatsController>(
      init: MessagesRollingChatsController(),
      builder: (rollingChatsController) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onHorizontalDragUpdate: rollingChatsController.onHorizontalDragUpdate,
          onHorizontalDragEnd: rollingChatsController.onHorizontalDragEnd,
          child: Container(
            width: rollingChatsController.widgetWidth,
            height: kToolbarHeight,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: rollingChatsController.getRollingChatsList(),
            ),
          ),
        );
      },
    );
  }
}
