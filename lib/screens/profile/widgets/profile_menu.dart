import 'package:elave/index.dart';

class ProfileMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Profile',
              style: TextStyle(
                color: CustomColors.blue91,
                fontSize: 18.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
            Images.profile,
          ],
        ),
        Column(
          children: [
            Text(
              'Mute',
              style: TextStyle(
                color: CustomColors.blue91,
                fontSize: 18.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
            Images.mute
          ],
        ),
        Column(
          children: [
            Text(
              'Block',
              style: TextStyle(
                color: CustomColors.blue91,
                fontSize: 18.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
            Images.black
          ],
        ),
        Column(
          children: [
            Text(
              'Search',
              style: TextStyle(
                color: CustomColors.blue91,
                fontSize: 18.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
            Images.search
          ],
        ),
      ],
    );
  }
}
