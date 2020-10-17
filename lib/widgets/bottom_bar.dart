import 'dart:ui';

import 'package:elave/index.dart';

class BottomBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(color: Colors.white),
                  color: Colors.white.withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 25.0),
                    _buildFindPeople(),
                    SizedBox(width: Get.width * 0.2),
                    _buildChats(),
                    const SizedBox(width: 25.0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFindPeople() {
    return GestureDetector(
      onTap: () {
        print('!!!!!!!!!');
      },
      child: Container(
        height: 60.0,
        width: 80.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Images.people,
            Text(
              'Find People',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChats() {
    return GestureDetector(
      onTap: () {
        print('!!!!!!!!!');
      },
      child: Container(
        height: 60.0,
        width: 80.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Images.cloud,
            Text(
              'Chats',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
