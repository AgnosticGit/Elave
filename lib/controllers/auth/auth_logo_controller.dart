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
  double firstStateOpacity = 0.5;
  double secondStageOpacity = 0.25;
  double alignment = 27.0;

  get _halfRectangle => rectangleSize / 2;
  get halfLogoSize => logoSize / 2 - 22.5;
  get center => Get.width / 2 - _halfRectangle;

  List<double> pos1 = [];
  List<double> pos2 = [];
  List<double> pos3 = [];
  List<double> pos4 = [];
  List<double> pos5 = [];
  List<double> pos6 = [];
  List<double> pos7 = [];
  List<double> pos8 = [];

  void onInit() {
    pos1 = [halfLogoSize - alignment, center - alignment, firstStateOpacity];
    pos2 = [halfLogoSize - alignment, center + alignment, firstStateOpacity];
    pos3 = [halfLogoSize + alignment, center - alignment, firstStateOpacity];
    pos4 = [halfLogoSize + alignment, center + alignment, firstStateOpacity];
    pos5 = [halfLogoSize + alignment * 2, center, secondStageOpacity];
    pos6 = [halfLogoSize - alignment * 2, center, secondStageOpacity];
    pos7 = [halfLogoSize, center - alignment * 2, secondStageOpacity];
    pos8 = [halfLogoSize, center + alignment * 2, secondStageOpacity];

    Timer(Duration(milliseconds: 500), () {
      started = true;
      update();
    });
  }

  void shuffle() {
    int rnd = Random().nextInt(8);
    int rnd2 = Random().nextInt(8);

    List poses = [pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8];

    List<double> x = poses[rnd2];
    poses[rnd2] = poses[rnd];
    poses[rnd] = x;

    for (int i = 0; i != 8; i++) {
      if (i == 0) {
        pos1 = poses[i];
      }
      if (i == 1) {
        pos2 = poses[i];
      }
      if (i == 2) {
        pos3 = poses[i];
      }
      if (i == 3) {
        pos4 = poses[i];
      }
      if (i == 4) {
        pos5 = poses[i];
      }
      if (i == 5) {
        pos6 = poses[i];
      }
      if (i == 6) {
        pos7 = poses[i];
      }
      if (i == 7) {
        pos8 = poses[i];
      }
    }
    update();
  }
}
