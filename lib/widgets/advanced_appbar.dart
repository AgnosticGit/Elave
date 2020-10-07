import 'package:elave/index.dart';

class AdvancedAppBar extends StatelessWidget with PreferredSizeWidget {
  AdvancedAppBar({
    this.actions,
    this.title,
    this.leading,
  });

  final List<Widget> actions;
  final String title;
  final Widget leading;

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: TextStyle(
          fontFamily: Fonts.BAIJAMJUREE,
          fontSize: 14.0,
        ),
      ),
      leading: leading,
      actions: actions,
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
