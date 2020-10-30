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
              padding: const EdgeInsets.only(top: 35.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Search(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: _buildTitle(
                      appbarWithSearchController.isSearchEnabled,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: actions,
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
