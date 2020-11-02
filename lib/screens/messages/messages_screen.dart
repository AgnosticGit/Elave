import 'package:elave/index.dart';

class MessagesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: CustomColors.blue10,
      appBar: MessagesAppbar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   gradient: RadialGradient(
        //     center: Alignment.topLeft,
        //     radius: 2,
        //     stops: [0, 0.3, 0.5],
        //     colors: [
        //       CustomColors.blue4E,
        //       CustomColors.blue29,
        //       CustomColors.blue10,
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
