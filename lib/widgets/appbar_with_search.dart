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
          margin: const EdgeInsets.only(top: 25.0),
          height: 35.0,
          child: Stack(
            children: [
              Search(),
              Align(
                alignment: Alignment.center,
                child: _buildTitle(appbarWithSearchController.isSearchEnabled),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions,
              ),
            ],
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
