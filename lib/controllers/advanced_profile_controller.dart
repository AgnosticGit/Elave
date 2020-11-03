import 'package:elave/index.dart';

enum AdvanceProfileSelectorState {
  music,
  movies,
  books,
  quotes,
}

class AdvancedProfileController extends GetxController {
  AdvanceProfileSelectorState selectorState = AdvanceProfileSelectorState.music;

  selectorToMusic() {
    selectorState = AdvanceProfileSelectorState.music;
    update();
  }

  selectorToMovies() {
    selectorState = AdvanceProfileSelectorState.movies;
    update();
  }

  selectorToBooks() {
    selectorState = AdvanceProfileSelectorState.books;
    update();
  }

  selectorToQuotes() {
    selectorState = AdvanceProfileSelectorState.quotes;
    update();
  }
}
