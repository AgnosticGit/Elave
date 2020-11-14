import 'package:elave/index.dart';

class AnimatedLogoController extends GetxController {
  AnimatedLogoController({this.logoSize});

  double logoSize;
  bool started = false;
  bool increased = false;
  Curve curve = Curves.linear;
  int duration = 300;
  double firstStateOpacity = 0.75;
  double secondStageOpacity = 0.5;

  Timer timer;
  double rotate = 0;

  get borderRadius => logoSize / 16;
  get rectangleSize => logoSize / 3.75;
  get alignment => logoSize / 6;
  get _halfRectangle => rectangleSize / 2;
  get centerY => logoSize / 2 - _halfRectangle;
  get centerX => logoSize / 2 - _halfRectangle;

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
    setInitialPositions();
    Timer(Duration(milliseconds: 500), () {
      started = true;
      update();
    });
    super.onInit();
  }

  void setInitialPositions() {
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
  }

  void shuffle() {
    duration = 300;
    rotate = 0;
    if (timer != null) {
      timer.cancel();
    }

    int rnd = Random().nextInt(8);
    int rnd2 = Random().nextInt(8);

    while (rnd == rnd2) {
      rnd = Random().nextInt(8);
      rnd2 = Random().nextInt(8);
    }

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
    rotate = 0;
    duration = 0;
    setInitialPositions();
    startRotate();
  }

  void startRotate() {
    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      rotate = rotate + 0.03;
      update();
    });
  }

  void stopRotate() {
    if (timer != null) {
      timer.cancel();
    }

    Timer.periodic(Duration(milliseconds: 10), (timer) {
      rotate = rotate - rotate / 15;
      if (rotate < 0.01) {
        timer.cancel();
      }
      update();
    });
  }
}
