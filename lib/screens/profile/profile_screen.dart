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
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: CustomColors.blue12,
              child: Column(
                children: [
                  const SizedBox(height: 35.0),
                  Container(
                    width: 200,
                    height: 120,
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
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'John Snow',
                    style: TextStyle(
                      color: CustomColors.blue91,
                      fontSize: 36.0,
                      fontFamily: Fonts.ANDADASC,
                    ),
                  ),
                  ProfileMenu(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0, 0),
                    child: ProfileSelector(),
                  ),
                  Expanded(child: ProfileMediaList()),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
