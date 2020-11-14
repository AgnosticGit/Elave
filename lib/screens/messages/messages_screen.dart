import 'package:elave/index.dart';

class MessagesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue10,
      appBar: MessagesAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.separated(
          separatorBuilder: (_, index) => const SizedBox(height: 10),
          itemCount: 2,
          itemBuilder: (context, index) {
            return MessagesItem(
              MessageModel(
                text: 'Привет',
                senderType: SenderType.enemy,
                id: index.toString(),
              ),
            );
          },
        ),
      ),
    );
  }
}
