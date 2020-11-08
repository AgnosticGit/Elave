import 'package:elave/index.dart';

class MessagesAppbar extends StatelessWidget with PreferredSizeWidget {
  Widget build(BuildContext context) {
    return GetBuilder<MessagesController>(
      init: MessagesController(),
      builder: (messagesController) {
        return Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white)),
          ),
          child: Blurred(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: kToolbarHeight,
                    alignment: Alignment.center,
                    child: Text(
                      messagesController.chat.name ?? 'Vyacheslav Elizariev',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: kToolbarHeight,
                    width: kToolbarHeight,
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: CustomColors.blue91,
                      onPressed: () => Get.back(),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: MessagesRollingChatsMini(),
                // )
              ],
            ),
          ),
        );
      },
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
