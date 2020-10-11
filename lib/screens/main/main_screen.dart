import 'package:elave/index.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearch(
        title: 'Chats',
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20.0,
            icon: Images.settings,
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: 30.0,

      // ),
      extendBodyBehindAppBar: true,
      backgroundColor: CustomColors.blue1A,
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
          padding: const EdgeInsets.fromLTRB(25.0, 60.0, 25.0, 0.0),
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
