import 'package:elave/index.dart';
import 'package:elave/modules/logo/models/logo_view_model.dart';

class LogoState extends GetxController {
  static LogoState get to => Get.put(LogoState());

  LogoState({this.logoSize});

  double logoSize;
  get borderRadius => logoSize / 16;
  get rectangleSize => logoSize / 3.75;
  get alignment => logoSize / 6;
  get _halfRectangle => rectangleSize / 2;
  get centerY => logoSize / 2 - _halfRectangle;
  get centerX => logoSize / 2 - _halfRectangle;

  LogoViewModel logoView = LogoViewModel();

  Timer timer;
}
