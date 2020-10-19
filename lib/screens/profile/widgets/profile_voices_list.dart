import 'package:elave/index.dart';

class ProfileVoicesList extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profileController) {
        return GridView.count(
          padding: EdgeInsets.fromLTRB(5.0, 7.0, 0.0, 0.0),
          crossAxisCount: 3,
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 30,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
