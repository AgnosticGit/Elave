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
        return Stack(
          children: _buildBlurredWidget(appbarWithSearchController),
        );
      },
    );
  }

  List<Widget> _buildBlurredWidget(
    AppbarWithSearchController appbarWithSearchController,
  ) {
    List<Widget> list = [];

    double sigmaX = 0.25;
    double sigmaY = 0.25;
    double margin = 80;

    for (double i = 0; i <= 40; i++) {
      list.add(
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: Container(
              margin: EdgeInsets.only(top: margin),
              height: 2,
              color: Colors.transparent,
            ),
          ),
        ),
      );
      margin -= 2;
      sigmaX += 0.25;
      sigmaY += 0.25;
    }

    list.add(
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Search(),
            ),
            Align(
              alignment: Alignment.center,
              child: _buildTitle(appbarWithSearchController.isSearchEnabled),
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
    );

    return list;
  }

  Widget _buildTitle(isSearchEnabled) {
    if (isSearchEnabled) {
      return const SizedBox();
    }

    return Text(
      title ?? '',
      style: TextStyle(color: Colors.white, fontSize: 20.0),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
