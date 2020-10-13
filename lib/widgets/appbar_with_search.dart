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
        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              margin: const EdgeInsets.only(top: 35.0),
              height: 40.0,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Search(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                        _buildTitle(appbarWithSearchController.isSearchEnabled),
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
      style: TextStyle(color: Colors.white),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
