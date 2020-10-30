import 'package:elave/index.dart';

class FindPeopleItem extends StatelessWidget {
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 90.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://sun9-19.userapi.com/c845217/v845217637/1f902d/s0VPEIX1ssU.jpg',
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Blurred(
              sigmaX: 10.0,
              sigmaY: 10.0,
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
