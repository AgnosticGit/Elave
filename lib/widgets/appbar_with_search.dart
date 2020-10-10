import 'package:elave/index.dart';

class AppBarWithSearch extends StatelessWidget with PreferredSizeWidget {
  AppBarWithSearch({
    this.actions,
    this.title,
  });

  final List<Widget> actions;
  final String title;

  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1, child: Search()),
          Flexible(
            flex: 1,
            child: Text(
              title ?? '',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions,
            ),
          )
        ],
      ),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
