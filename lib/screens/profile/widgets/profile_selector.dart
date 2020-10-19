import 'package:elave/controllers/profile_controller.dart';
import 'package:elave/index.dart';

class ProfileSelector extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profileController) {
        return Row(
          children: [
            GestureDetector(
              onTap: profileController.selectorToMedia,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 100,
                decoration: BoxDecoration(
                  color: profileController.selectorState
                      ? CustomColors.blue12
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Media',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: profileController.selectorToVoices,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 100,
                decoration: BoxDecoration(
                  color: profileController.selectorState
                      ? Colors.transparent
                      : CustomColors.blue12,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Voices',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
