import 'package:elave/index.dart';

class AdvancedProfileSelector extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AdvancedProfileController>(
      init: AdvancedProfileController(),
      builder: (advancedProfileController) {
        return Row(
          children: [
            GestureDetector(
              onTap: advancedProfileController.selectorToMusic,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 80,
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.music
                      ? CustomColors.blue12
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
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: advancedProfileController.selectorToMovies,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 80,
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.movies
                      ? CustomColors.blue12
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
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 80,
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.books
                      ? CustomColors.blue12
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
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                width: 80,
                decoration: BoxDecoration(
                  color: advancedProfileController.selectorState ==
                          AdvanceProfileSelectorState.quotes
                      ? CustomColors.blue12
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
