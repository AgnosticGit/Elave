import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  List<Function> openBasket =
      List<Function>(20); // TODO Длину листа поменять на реальную
  List<Function> openMute = List<Function>(20);
  List<Function> closeBasket = List<Function>(20);
  List<Function> closeMute = List<Function>(20);
  int blurredItemIndex;

  void setOpenBasket(Function func, int index) => openBasket[index] = func;
  void setOpenMute(Function func, int index) => openMute[index] = func;
  void setCloseBasket(Function func, int index) => closeBasket[index] = func;
  void setCloseMute(Function func, int index) => closeMute[index] = func;

  void enableBlurOnItem(int index) {
    blurredItemIndex = index;
    update();
  }

  void disableBlurOnItem(int index) {
    blurredItemIndex = null;
    update();
  }

  void openMenu(int index) {
    closeAllMenus();
    openBasket[index]();
    openMute[index]();
  }

  void closeMenu(int index) {
    closeBasket[index]();
    closeMute[index]();
  }

  void closeAllMenus() {
    if (closeBasket.length > 0 && closeMute.length > 0) {
      closeBasket.forEach((closeFunc) {
        if (closeFunc != null) closeFunc();
      });
      closeMute.forEach((closeFunc) {
        if (closeFunc != null) closeFunc();
      });
    }
  }
}
