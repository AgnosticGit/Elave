import 'package:elave/index.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue1A,
      appBar: AppBarWithSearch(
        title: 'Chats',
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 22.0,
            icon: Images.settings,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              CustomColors.blue4E,
              CustomColors.blue29,
              CustomColors.blue1A,
            ],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 90.0),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ChatsItem(
              name: "Вячеслав Елизарьев " + index.toString(),
              lastMessage: 'Where my money ' + index.toString(),
              unreadMessagesCount: 10,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
