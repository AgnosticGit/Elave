import 'package:elave/index.dart';

class AuthLogoController extends GetxController {
  bool started = false;
  bool increased = false;
  double rectangleSize = 45.0;
  double increasedRectangleSize = 50.0;
  double logoSize = 160.0;
  Curve curve = Curves.linear;
  int firstStageDuration = 300;
  int secondStageDuration = 300;
  double firstStateOpacity = 0.75;
  double secondStageOpacity = 0.5;
  double alignment = 27.0;

  get _halfRectangle => rectangleSize / 2;
  get centerY => logoSize / 2 - _halfRectangle;
  get centerX => Get.width / 2 - _halfRectangle;

  LogoElementModel logoElement0;
  LogoElementModel logoElement1;
  LogoElementModel logoElement2;
  LogoElementModel logoElement3;
  LogoElementModel logoElement4;
  LogoElementModel logoElement5;
  LogoElementModel logoElement6;
  LogoElementModel logoElement7;
  LogoElementModel logoElement8;

  void onInit() {
    logoElement0 = LogoElementModel(
      x: centerX,
      y: centerY,
      opacity: 1,
    );
    logoElement1 = LogoElementModel(
      x: centerX - alignment,
      y: centerY - alignment,
      opacity: firstStateOpacity,
    );
    logoElement2 = LogoElementModel(
      x: centerX + alignment,
      y: centerY - alignment,
      opacity: firstStateOpacity,
    );
    logoElement3 = LogoElementModel(
      x: centerX - alignment,
      y: centerY + alignment,
      opacity: firstStateOpacity,
    );
    logoElement4 = LogoElementModel(
      x: centerX + alignment,
      y: centerY + alignment,
      opacity: firstStateOpacity,
    );
    logoElement5 = LogoElementModel(
      x: centerX,
      y: centerY + alignment * 2,
      opacity: secondStageOpacity,
    );
    logoElement6 = LogoElementModel(
      x: centerX,
      y: centerY - alignment * 2,
      opacity: secondStageOpacity,
    );
    logoElement7 = LogoElementModel(
      x: centerX - alignment * 2,
      y: centerY,
      opacity: secondStageOpacity,
    );
    logoElement8 = LogoElementModel(
      x: centerX + alignment * 2,
      y: centerY,
      opacity: secondStageOpacity,
    );

    Timer(Duration(milliseconds: 500), () {
      started = true;
      update();
    });
  }

  void shuffle() {
    int rnd = Random().nextInt(8);
    int rnd2 = Random().nextInt(8);

    List<LogoElementModel> poses = [
      logoElement1,
      logoElement2,
      logoElement3,
      logoElement4,
      logoElement5,
      logoElement6,
      logoElement7,
      logoElement8,
    ];

    LogoElementModel x = poses[rnd2];
    poses[rnd2] = poses[rnd];
    poses[rnd] = x;

    for (int i = 0; i != 8; i++) {
      if (i == 0) {
        logoElement1 = poses[i];
      }
      if (i == 1) {
        logoElement2 = poses[i];
      }
      if (i == 2) {
        logoElement3 = poses[i];
      }
      if (i == 3) {
        logoElement4 = poses[i];
      }
      if (i == 4) {
        logoElement5 = poses[i];
      }
      if (i == 5) {
        logoElement6 = poses[i];
      }
      if (i == 6) {
        logoElement7 = poses[i];
      }
      if (i == 7) {
        logoElement8 = poses[i];
      }
    }
    update();
  }

  void onLoading() {
    update();
  }
}
