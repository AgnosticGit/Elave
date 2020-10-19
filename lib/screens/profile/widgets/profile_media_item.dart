import 'package:elave/index.dart';

class ProfileMediaItem extends StatelessWidget {
  ProfileMediaItem({this.link});

  final String link;

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, 0),
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(link),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
