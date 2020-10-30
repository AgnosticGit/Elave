import 'package:elave/index.dart';

class ChatsScreen extends StatelessWidget {
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
        child: GetBuilder<ChatsState>(
          init: ChatsState(),
          builder: (chatsState) {
            return ListView.builder(
              itemCount: Get.put(ChatsState()).chatsList.length,
              itemBuilder: (context, index) {
                return Get.put(ChatsState()).chatsList[index];
              },
            );
          },
        ),
      ),
    );
  }

  // Widget _buildSelector() {
  //   final bottomBarState = Get.put(BottomBarController()).bottomBarState;

  //   if (bottomBarState == BottomBarState.findPeople) {
  //     return FindPeopleScreen();
  //   }

  //   if (bottomBarState == BottomBarState.chats) {
  //     return ChatsScreen();
  //   }

  //   return SizedBox();
  // }

}
