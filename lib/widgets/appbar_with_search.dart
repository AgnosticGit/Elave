import 'dart:ui';
import 'package:elave/index.dart';

class AppBarWithSearch extends StatelessWidget with PreferredSizeWidget {
  AppBarWithSearch({
    this.actions,
    this.title,
  });

  final List<Widget> actions;
  final String title;

  Widget build(BuildContext context) {
    return GetBuilder<AppbarWithSearchController>(
      init: AppbarWithSearchController(),
      builder: (appbarWithSearchController) {
        return Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white)),
          ),
          child: Blurred(
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      width: kToolbarHeight,
                      height: kToolbarHeight,
                      child: _buildTitle(
                        appbarWithSearchController.isSearchEnabled,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: kToolbarHeight,
                      child: Search(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: kToolbarHeight,
                      height: kToolbarHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: actions,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTitle(isSearchEnabled) {
    if (isSearchEnabled) {
      return const SizedBox();
    }

    return Text(
      title ?? '',
      style: TextStyle(color: Colors.white, fontSize: 18.0),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
