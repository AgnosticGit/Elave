import 'package:elave/index.dart';

class ProfileVoicesList extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (profileController) {
        return Container(
          margin: const EdgeInsets.only(top: 15),
          width: 300,
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: CustomColors.blue12,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Row(
                        children: profileController.getVoicesLines(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'John Snow at 10:01',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 12.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Text(
                        '00:43',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 12.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: CustomColors.blue12,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Row(
                        children: profileController.getVoicesLines(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'John Snow at 10:01',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 12.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Text(
                        '00:43',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 12.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
