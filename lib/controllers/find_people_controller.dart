import 'package:elave/index.dart';

class FindPeopleController extends GetxController {
  final pageController = PageController(initialPage: 2);

  void onPageChange(int index) {
    print(index);
  }
}
