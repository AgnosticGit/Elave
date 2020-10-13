import 'package:elave/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProfileScreen(),
    );
  }
}
