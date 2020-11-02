import 'package:elave/index.dart';

class MessagesAppbar extends StatelessWidget with PreferredSizeWidget {
  MessagesAppbar({this.chatName});

  final String chatName;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: Blurred(
        child: Stack(
          children: [
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
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                chatName ?? '',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
