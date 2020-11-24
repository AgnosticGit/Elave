import 'package:elave/index.dart';

class MessagesAttach extends StatelessWidget {
  Widget build(BuildContext context) {
    return Blurred(
      child: Container(
        height: 130,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(12),
          ),
          color: Colors.black.withOpacity(0.10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                color: CustomColors.blue293,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Align(
                child: SizedBox(width: 40, height: 40, child: Images.camera),
              ),
            ),
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                color: CustomColors.blue293,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Align(
                child: SizedBox(width: 40, height: 40, child: Images.gallery),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
