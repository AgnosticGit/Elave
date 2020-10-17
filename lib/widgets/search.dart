import 'package:elave/index.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AppbarWithSearchController>(
      init: AppbarWithSearchController(),
      builder: (appbarController) {
        double mainWidth = appbarController.isSearchEnabled
            ? Get.width / 1.3
            : Get.width / 3.0;
        double searchOpacity = appbarController.isSearchEnabled ? 0.0 : 1.0;
        double textFieldWidth =
            appbarController.isSearchEnabled ? Get.width / 2.5 : 0.0;
        double lineLeftMargin =
            appbarController.isSearchEnabled ? Get.width / 2 + 6 : 40.0;
        double cleanButtomLeftMargin = Get.width / 1.85;
        double cleanButtonOpacity = appbarController.isSearchEnabled ? 1 : 0;
        double bottomLineWidth =
            appbarController.isSearchEnabled ? Get.width / 1.9 : 0;

        return GestureDetector(
          onTap: appbarController.enableSearch,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 45.0,
            width: mainWidth,
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
                  top: -5.0,
                  left: 45.0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: textFieldWidth,
                    height: 42.0,
                    child: TextField(
                      focusNode: appbarController.focusNode,
                      controller: appbarController.textEditingController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: CustomColors.blue91,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 35.0,
                  left: 45.0,
                  child: AnimatedContainer(
                    width: bottomLineWidth,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: CustomColors.blue91,
                          width: 1.2,
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
                      onTap: appbarController.cleanSearch,
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
