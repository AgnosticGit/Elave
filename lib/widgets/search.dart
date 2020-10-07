import 'package:elave/index.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Images.loupe,
          Container(
            width: 1,
            height: 20,
            decoration: BoxDecoration(
              border: Border(),
              color: CustomColors.blue91,
            ),
          )
        ],
      ),
    );
  }
}
