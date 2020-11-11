import 'package:elave/index.dart';

class MessagesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue10,
      appBar: MessagesAppbar(),
      body: Center(
        child: MessagesRollingChatsMini(),
      ),
    );
  }
}
