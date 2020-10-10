import 'package:elave/index.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AppbarWithSearchController>(
      init: AppbarWithSearchController(),
      builder: (appbarWithSearchController) {
        double mainWidth = appbarWithSearchController.isSearchEnabled
            ? Get.width / 1.3
            : Get.width / 3.0;
        double searchOpacity =
            appbarWithSearchController.isSearchEnabled ? 0.0 : 1.0;
        double textFieldWidth =
            appbarWithSearchController.isSearchEnabled ? Get.width / 2 : 0.0;
        double lineLeftMargin =
            appbarWithSearchController.isSearchEnabled ? Get.width / 2 : 40.0;
        double cleanButtomLeftMargin = Get.width / 1.9;
        double cleanButtonOpacity =
            appbarWithSearchController.isSearchEnabled ? 1 : 0;

        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 45.0,
          width: mainWidth,
          child: GestureDetector(
            onTap: appbarWithSearchController.enableSearch,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 15.0,
                  child: Images.loupe,
                ),
                AnimatedPositioned(
                  left: lineLeftMargin,
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    width: 1,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border(),
                      color: CustomColors.blue91,
                    ),
                  ),
                ),
                Positioned(
                  top: -10.0,
                  left: 45.0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: textFieldWidth,
                    height: 42.0,
                    child: TextField(
                      focusNode: appbarWithSearchController.focusNode,
                      controller:
                          appbarWithSearchController.textEditingController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: CustomColors.blue91,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: CustomColors.blueE6,
                            width: 1.2,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: CustomColors.blue91),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 45.0,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 200),
                    opacity: searchOpacity,
                    child: Text(
                      'Search',
                      style: TextStyle(color: CustomColors.blue91),
                    ),
                  ),
                ),
                Positioned(
                  left: cleanButtomLeftMargin,
                  child: AnimatedOpacity(
                    opacity: cleanButtonOpacity,
                    duration: Duration(milliseconds: 0),
                    child: GestureDetector(
                      onTap: appbarWithSearchController.cleanSearch,
                      child: Text(
                        'Clean',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
