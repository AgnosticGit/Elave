import 'package:elave/controllers/profile_controller.dart';
import 'package:elave/index.dart';

class AdvancedProfileSelector extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AdvancedProfileController>(
      init: AdvancedProfileController(),
      builder: (advancedProfileController) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: advancedProfileController.selectorToMusic,
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.music
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Music',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: advancedProfileController.selectorToMovies,
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.movies
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Movies',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: advancedProfileController.selectorToBooks,
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.books
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Books',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: advancedProfileController.selectorToQuotes,
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.quotes
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Text(
                  'Quotes',
                  style: TextStyle(
                    color: CustomColors.blue91,
                    fontSize: 13.0,
                    fontFamily: Fonts.ANDADASC,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        );
      },
    );
  }
}
