import 'package:elave/index.dart';

class FindPeopleScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue1A,
      appBar: CustomAppBar(
        title: 'Find People',
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
            center: Alignment.topRight,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              CustomColors.blue4E,
              CustomColors.blue29,
              CustomColors.blue1A,
            ],
          ),
        ),
        child: GetBuilder<FindPeopleController>(
          init: FindPeopleController(),
          builder: (findPeopleController) {
            return PageView(
              onPageChanged: findPeopleController.onPageChange,
              controller: findPeopleController.pageController,
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: Get.height * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: Get.height * 0.7,
                    color: Colors.orange,
                  ),
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: Get.height * 0.7,
                    color: Colors.green,
                  ),
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    height: Get.height * 0.7,
                    color: Colors.blue,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
