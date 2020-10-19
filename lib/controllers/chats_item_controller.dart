import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  List<Function> openBasket =
      List<Function>(20); // Длину листа поменять на реальную
  List<Function> openMute = List<Function>(20);
  List<Function> closeBasket = List<Function>(20);
  List<Function> closeMute = List<Function>(20);

  void setOpenBasket(Function func, int index) => openBasket[index] = func;
  void setOpenMute(Function func, int index) => openMute[index] = func;
  void setCloseBasket(Function func, int index) => closeBasket[index] = func;
  void setCloseMute(Function func, int index) => closeMute[index] = func;

  void openMenu(int index) {
    openBasket[index]();
    openMute[index]();
  }

  void closeMenu(int index) {
    closeBasket[index]();
    closeMute[index]();
  }
}
