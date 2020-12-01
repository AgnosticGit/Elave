import 'package:elave/index.dart';

class ProfileMediaList extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profileController) {
        return GridView.count(
          padding: EdgeInsets.fromLTRB(5.0, 7.0, 0.0, 0.0),
          crossAxisCount: 3,
          children: profileController.getMediaList(),
        );
      },
    );
  }
}
