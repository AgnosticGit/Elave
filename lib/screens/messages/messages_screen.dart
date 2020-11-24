import 'package:elave/index.dart';

class MessagesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue10,
      appBar: MessagesAppbar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ListView.separated(
              reverse: true,
              separatorBuilder: (_, index) => const SizedBox(height: 10),
              itemCount: Get.put(MessagesController()).chat.messages.length,
              itemBuilder: (context, index) {
                int length = Get.put(MessagesController()).chat.messages.length;
                final messageItem = MessagesItem(
                  Get.put(MessagesController()).chat.messages[index],
                );

                if (index == 0) {
                  return Column(
                    children: [
                      messageItem,
                      const SizedBox(height: 10.0),
                    ],
                  );
                }

                if (index == length - 1) {
                  return Column(
                    children: [
                      const SizedBox(height: 10.0),
                      messageItem,
                    ],
                  );
                }

                return messageItem;
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MessagesTapper(),
          ),
        ],
      ),
    );
  }
}
