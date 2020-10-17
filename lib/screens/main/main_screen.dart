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
      bottomNavigationBar:  BottomBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0,
      //   onTap: (_) => print(_),
      //   backgroundColor: Colors.transparent,
      //   selectedItemColor: CustomColors.blue91,
      //   unselectedItemColor: CustomColors.blue51,
      //   currentIndex: 1,
      //   items: [
      //     BottomNavigationBarItem( 
      //       activeIcon: Images.peopleWhite,
      //       icon: Images.people,
      //       label: 'Find People',
      //     ),
      //     BottomNavigationBarItem(
      //       activeIcon: Images.cloudWhite,
      //       icon: Images.cloud,
      //       label: 'Chats',
      //     ),

      //   ],
      // ),
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
          child: Column(
            children: [
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
              ChatsItem(),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
