import 'package:elave/index.dart';

class Search extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 15.0,
            child: Images.loupe,
          ),
          AnimatedPositioned(
            left: 40.0,
            duration: Duration(milliseconds: 300),
            child: Container(
              width: 1,
              height: 20,
              decoration: BoxDecoration(
                border: Border(),
                color: CustomColors.blue91,
              ),
            ),
          ),
          Positioned(left: 45.0, child: Text('Search')),
          Positioned(
            left: 45.0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 0.0,
              height: 20.0,
              child: TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: CustomColors.blue91,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: CustomColors.blueE6,
                      width: 1.2,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.blue91),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
