import 'package:elave/index.dart';

class AppbarWithSearchController extends GetxController {
  final textEditingController = TextEditingController();
  final focusNode = FocusNode();

  bool isSearchEnabled = false;

  void enableSearch() {
    focusNode.requestFocus();
    isSearchEnabled = true;
    update();
  }

  void cleanSearch() {
    textEditingController.clear();
    focusNode.unfocus();
    isSearchEnabled = false;
    update();
  }
}
