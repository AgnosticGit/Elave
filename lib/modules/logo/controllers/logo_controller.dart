import 'package:elave/index.dart';
import 'package:elave/states/logo_state.dart';

class LogoController {
  void onInit() {
    setInitialPositions();
    Timer(Duration(milliseconds: 500), () {
      LogoState.to.logoView.started = true;
      LogoState.to.update();
    });
  }

  void setInitialPositions() {
    LogoState.to.logoView.logoElement0 = LogoElementModel(
      x: LogoState.to.centerX,
      y: LogoState.to.centerY,
      opacity: 1,
    );
    LogoState.to.logoView.logoElement1 = LogoElementModel(
      x: LogoState.to.centerX - LogoState.to.alignment,
      y: LogoState.to.centerY - LogoState.to.alignment,
      opacity: LogoState.to.logoView.firstStateOpacity,
    );
    LogoState.to.logoView.logoElement2 = LogoElementModel(
      x: LogoState.to.centerX + LogoState.to.alignment,
      y: LogoState.to.centerY - LogoState.to.alignment,
      opacity: LogoState.to.logoView.firstStateOpacity,
    );
    LogoState.to.logoView.logoElement3 = LogoElementModel(
      x: LogoState.to.centerX - LogoState.to.alignment,
      y: LogoState.to.centerY + LogoState.to.alignment,
      opacity: LogoState.to.logoView.firstStateOpacity,
    );
    LogoState.to.logoView.logoElement4 = LogoElementModel(
      x: LogoState.to.centerX + LogoState.to.alignment,
      y: LogoState.to.centerY + LogoState.to.alignment,
      opacity: LogoState.to.logoView.firstStateOpacity,
    );
    LogoState.to.logoView.logoElement5 = LogoElementModel(
      x: LogoState.to.centerX,
      y: LogoState.to.centerY + LogoState.to.alignment * 2,
      opacity: LogoState.to.logoView.secondStageOpacity,
    );
    LogoState.to.logoView.logoElement6 = LogoElementModel(
      x: LogoState.to.centerX,
      y: LogoState.to.centerY - LogoState.to.alignment * 2,
      opacity: LogoState.to.logoView.secondStageOpacity,
    );
    LogoState.to.logoView.logoElement7 = LogoElementModel(
      x: LogoState.to.centerX - LogoState.to.alignment * 2,
      y: LogoState.to.centerY,
      opacity: LogoState.to.logoView.secondStageOpacity,
    );
    LogoState.to.logoView.logoElement8 = LogoElementModel(
      x: LogoState.to.centerX + LogoState.to.alignment * 2,
      y: LogoState.to.centerY,
      opacity: LogoState.to.logoView.secondStageOpacity,
    );
  }

  void shuffle() {
    LogoState.to.logoView.duration = 300;
    LogoState.to.logoView.rotate = 0;
    
    if (LogoState.to.timer != null) {
      LogoState.to.timer.cancel();
    }

    int rnd = Random().nextInt(8);
    int rnd2 = Random().nextInt(8);

    while (rnd == rnd2) {
      rnd = Random().nextInt(8);
      rnd2 = Random().nextInt(8);
    }

    List<LogoElementModel> poses = [
      LogoState.to.logoView.logoElement1,
      LogoState.to.logoView.logoElement2,
      LogoState.to.logoView.logoElement3,
      LogoState.to.logoView.logoElement4,
      LogoState.to.logoView.logoElement5,
      LogoState.to.logoView.logoElement6,
      LogoState.to.logoView.logoElement7,
      LogoState.to.logoView.logoElement8,
    ];

    LogoElementModel x = poses[rnd2];
    poses[rnd2] = poses[rnd];
    poses[rnd] = x;

    for (int i = 0; i != 8; i++) {
      if (i == 0) {
        LogoState.to.logoView.logoElement1 = poses[i];
      }
      if (i == 1) {
        LogoState.to.logoView.logoElement2 = poses[i];
      }
      if (i == 2) {
        LogoState.to.logoView.logoElement3 = poses[i];
      }
      if (i == 3) {
        LogoState.to.logoView.logoElement4 = poses[i];
      }
      if (i == 4) {
        LogoState.to.logoView.logoElement5 = poses[i];
      }
      if (i == 5) {
        LogoState.to.logoView.logoElement6 = poses[i];
      }
      if (i == 6) {
        LogoState.to.logoView.logoElement7 = poses[i];
      }
      if (i == 7) {
        LogoState.to.logoView.logoElement8 = poses[i];
      }
    }
    LogoState.to.update();
  }

  void onLoadingStarted() {
    LogoState.to.logoView.rotate = 0;
    LogoState.to.logoView.duration = 0;
    setInitialPositions();
    startRotate();
  }

  void startRotate() {
    LogoState.to.timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      LogoState.to.logoView.rotate = LogoState.to.logoView.rotate + 0.03;
      LogoState.to.update();
    });
  }

  void onLoadingFinished() {
    if (LogoState.to.timer != null) {
      LogoState.to.timer.cancel();
    }

    Timer.periodic(Duration(milliseconds: 10), (timer) {
      LogoState.to.logoView.rotate =
          LogoState.to.logoView.rotate - LogoState.to.logoView.rotate / 15;
      if (LogoState.to.logoView.rotate < 0.01) {
        timer.cancel();
      }
      LogoState.to.update();
    });
  }
}
