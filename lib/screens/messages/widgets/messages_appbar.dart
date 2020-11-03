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
                      messagesController.chatName ?? '',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    color: Colors.red,
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
              ],
            ),
          ),
        );
      },
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
