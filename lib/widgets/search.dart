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
        double cleanButtomLeftMargin = Get.width / 1.95;
        double cleanButtonOpacity = appbarController.isSearchEnabled ? 1 : 0;
        double bottomLineWidth =
            appbarController.isSearchEnabled ? Get.width / 1.9 : 0;

        return GestureDetector(
          onTap: appbarController.enableSearch,
          behavior: HitTestBehavior.opaque,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 60.0,
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
                  left: 45.0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: textFieldWidth,
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
                  top: 40.0,
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
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 50.0,
                        // color: Colors.red,
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
