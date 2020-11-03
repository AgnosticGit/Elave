import 'package:elave/index.dart';

class AdvancedProfile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue10,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              CustomColors.blue4E,
              CustomColors.blue29,
              CustomColors.blue10,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.mds.yandex.net/get-zen_doc/1857554/pub_5e138ffa4e057700b19f9841_5e139dd02b616900b17b8b0e/scale_1200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'John Snow',
                        style: TextStyle(
                          color: CustomColors.blue91,
                          fontSize: 20.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Text(
                        'London, Great Britain',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'London, 33',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Text(
                        'Relationship',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Images.level1,
                      Text(
                        'English',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Images.level2,
                      Text(
                        'German',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Images.arrow,
                      Images.level2,
                      Text(
                        'Russian',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                      Images.level4,
                      Text(
                        'Spanish',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: Fonts.ANDADASC,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'About me',
                    style: TextStyle(
                      color: CustomColors.blue91,
                      fontSize: 18.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  Text(
                    'Theater, film and television actor. best known for his role as Jon Snow on the HBO television series Game of Thrones; the role earned me a Primetime Emmy nomination. In 2017, I became one of the highest paid TV actors. I also starred in Pompeii (2014), Memories of the Future (2014) and Haunting: A Better Fate (2015); minor - in the films "Silent Hill 2" (2012), "The Seventh Son" (2014), "How to Train Your Dragon 2" (2014) [9] and "How to Train Your Dragon 3" (2019).',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  Text(
                    'Looking for',
                    style: TextStyle(
                      color: CustomColors.blue91,
                      fontSize: 18.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  Text(
                    'I am searching my drum',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  Text(
                    'Preferences',
                    style: TextStyle(
                      color: CustomColors.blue91,
                      fontSize: 18.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  Text(
                    'I am searching my drum',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  AdvancedProfileSelector(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
