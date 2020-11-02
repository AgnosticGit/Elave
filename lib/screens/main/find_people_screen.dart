import 'package:elave/index.dart';

class FindPeopleScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue10,
      appBar: CustomAppBar(
        title: 'Find People',
        actions: [
          IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Images.settings,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GetBuilder<FindPeopleController>(
          init: FindPeopleController(),
          builder: (findPeopleController) {
            return PageView(
              onPageChanged: findPeopleController.onPageChange,
              controller: findPeopleController.pageController,
              children: [
                FindPeopleItem(),
                FindPeopleItem(),
                FindPeopleItem(),
                FindPeopleItem(),
              ],
            );
          },
        ),
      ),
    );
  }
}
