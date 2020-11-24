import 'package:elave/index.dart';

class AdvancedProfileMoviesList extends StatelessWidget {
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
            Text(
              'Хатико',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
            Text(
              'Хатико Хатико Хатико',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: Fonts.ANDADASC,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
