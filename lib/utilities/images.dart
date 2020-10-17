import 'package:elave/index.dart';

class Images {
  static final Widget settings = SvgPicture.asset(
    'assets/images/settings.svg',
    width: 20,
  );
  static final Widget loupe = SvgPicture.asset(
    'assets/images/loupe.svg',
    width: 20.0,
  );
  static final Widget cloud = SvgPicture.asset(
    'assets/images/cloud.svg',
    color: CustomColors.blue71,
  );
  static final Widget cloudWhite = SvgPicture.asset(
    'assets/images/cloud.svg',
    color: Colors.white,
    width: 25.0,
  );
  static final Widget people = SvgPicture.asset('assets/images/people.svg');
  static final Widget peopleWhite = SvgPicture.asset(
    'assets/images/people.svg',
    color: Colors.white,
    width: 35.0,
  );
}
