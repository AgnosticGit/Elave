import 'package:elave/index.dart';

class ChatsItemController extends GetxController {
  List<Function> openBasket = [];
  List<Function> openMute = [];
  List<Function> closeBasket = [];
  List<Function> closeMute = [];

  void setOpenBasket(Function func) => openBasket.add(func);
  void setOpenMute(Function func) => openMute.add(func);
  void setCloseBasket(Function func) => closeBasket.add(func);
  void setCloseMute(Function func) => closeMute.add(func);

  void openMenu(int index) {
    openBasket[index]();
    openMute[index]();
  }

  void closeMenu(int index) {
    closeBasket[index]();
    closeMute[index]();
  }
}
