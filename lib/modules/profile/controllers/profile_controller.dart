import 'package:elave/index.dart';

class ProfileController extends GetxController {
  bool selectorState = false;

  List<String> links = [
    "https://i.pinimg.com/originals/6f/11/22/6f11226e5a37674fc0b8d41c58ec3d86.png",
    "https://img.gazeta.ru/files3/149/8211149/john-pic905-895x505-48429.jpg",
    "https://i.ytimg.com/vi/9lQ7y-UAZaA/maxresdefault.jpg",
    "https://s2.cdn.teleprogramma.pro/wp-content/uploads/2018/07/171bbddd61d1784f2b8b9d5b6efe7788.jpg",
    "https://cdnimg.rg.ru/i/gallery/6599b444/1_2f2259e4.jpg",
    "https://u.kanobu.ru/editor/images/91/8d9db7d9-f965-4d40-8587-cbe003d160de.jpg",
    "https://img.gazeta.ru/files3/149/8211149/john-pic905-895x505-48429.jpg",
    "https://i.ytimg.com/vi/9lQ7y-UAZaA/maxresdefault.jpg",
    "https://s2.cdn.teleprogramma.pro/wp-content/uploads/2018/07/171bbddd61d1784f2b8b9d5b6efe7788.jpg",
    "https://cdnimg.rg.ru/i/gallery/6599b444/1_2f2259e4.jpg",
    "https://u.kanobu.ru/editor/images/91/8d9db7d9-f965-4d40-8587-cbe003d160de.jpg"
  ];

  List<Widget> getMediaList() {
    List<Widget> items = [];

    links.forEach((element) {
      items.add(ProfileMediaItem(link: element));
    });

    return items;
  }

  selectorToMedia() {
    selectorState = true;
    update();
  }

  selectorToVoices() {
    selectorState = false;
    update();
  }

  getVoicesLines() {
    List<Widget> items = [];

    for (int i = 0; i < 85; i++) {
      items.add(
        Container(
          margin: const EdgeInsets.only(right: 2),
          width: 1,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      );
    }

    return items;
  }
}
