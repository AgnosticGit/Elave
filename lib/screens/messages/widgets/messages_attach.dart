import 'package:elave/index.dart';

class MessagesAttach extends StatelessWidget {
  Widget build(BuildContext context) {
    return Blurred(
      child: Container(
        height: 100,
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(12),
          ),
          color: Colors.white.withOpacity(0.25),
        ),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                color: CustomColors.blue293,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
