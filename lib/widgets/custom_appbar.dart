import 'package:elave/index.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    this.actions,
    this.title,
  });

  final List<Widget> actions;
  final String title;

  Widget build(BuildContext context) {
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
                alignment: Alignment.center,
                child: Text(
                  title ?? '',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
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
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
