import 'package:elave/index.dart';

class FindPeopleLanguagesLevel extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLevel(4),
        const SizedBox(width: 3.0),
        Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.16),
          child: Text(
            'Russian',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
        const SizedBox(width: 5.0),
        _buildLevel(3),
        const SizedBox(width: 3.0),
        Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.16),
          child: Text(
            'Spanish',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
        Icon(Icons.arrow_right_alt, color: Colors.white),
        _buildLevel(2),
        const SizedBox(width: 3.0),
        Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.16),
          child: Text(
            'Arabic',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
        const SizedBox(width: 5.0),
        _buildLevel(1),
        const SizedBox(width: 3.0),
        Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.16),
          child: Text(
            'English',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ],
    );
  }

  Widget _buildLevel(int level) {
    List<Widget> levelsList = [];

    for (int i = 0; i < level; i++) {
      levelsList.add(
        Container(
          margin: EdgeInsets.only(bottom: 1.0),
          width: 2.5,
          height: 2.5,
          decoration: BoxDecoration(
            color: _buildLevelColor(level),
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      );
    }

    while (levelsList.length < 4) {
      levelsList.insert(
        0,
        Container(
          margin: EdgeInsets.only(bottom: 1.0),
          width: 2.5,
          height: 2.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      );
    }

    return Column(
      children: levelsList,
    );
  }

  Color _buildLevelColor(int level) {
    if (level == 1) return Colors.red;
    if (level == 2) return Colors.orange;
    if (level == 3) return Colors.yellow;
    if (level == 4) return Colors.green;
    return Colors.white;
  }
}
