import 'package:elave/index.dart';

class ProfileScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue1A,
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
              CustomColors.blue1A,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: CustomColors.blue12,
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Container(
                      width: 200,
                      height: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars.mds.yandex.net/get-zen_doc/1857554/pub_5e138ffa4e057700b19f9841_5e139dd02b616900b17b8b0e/scale_1200"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //     borderRadius: BorderRadius.circular(80.0),
                    //   ),
                    // ),
                    Text(
                      'John Snou',
                      style: TextStyle(
                        color: CustomColors.blue91,
                        fontSize: 36.0,
                        fontFamily: Fonts.ANDADASC,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: CustomColors.blue91,
                            fontSize: 18.0,
                            fontFamily: Fonts.ANDADASC,
                          ),
                        ),
                        Text(
                          'Mute',
                          style: TextStyle(
                            color: CustomColors.blue91,
                            fontSize: 18.0,
                            fontFamily: Fonts.ANDADASC,
                          ),
                        ),
                        Text(
                          'Black',
                          style: TextStyle(
                            color: CustomColors.blue91,
                            fontSize: 18.0,
                            fontFamily: Fonts.ANDADASC,
                          ),
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: CustomColors.blue91,
                            fontSize: 18.0,
                            fontFamily: Fonts.ANDADASC,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.audiotrack,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        Icon(
                          Icons.beach_access,
                          color: Colors.blue,
                          size: 36.0,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
