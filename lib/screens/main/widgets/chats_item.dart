import 'package:elave/index.dart';

class ChatsItem extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAvatar(),
        const SizedBox(width: 15.0),
        Expanded(
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: CustomColors.blue3D)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'John Dohn',
                          style: TextStyle(color: CustomColors.blue91),
                        ),
                        const SizedBox(width: 5.0),
                        _buildStatus(),
                      ],
                    ),
                    Text(
                      '22 aug',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Roll my drum bitch',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    _buildMessagesCount(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.network(
          'https://sun9-55.userapi.com/ZAe4B1Pkk3-AZp6Y-QnQkYCIyA4E32jbL_xbIQ/5gV5s9wwONs.jpg',
          height: 60.0,
          width: 60.0,
        ),
      ),
    );
  }

  Widget _buildStatus() {
    return Container(
      alignment: Alignment.center,
      width: 40.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: CustomColors.green00,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        'Online',
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
        ),
      ),
    );
  }

  Widget _buildMessagesCount() {
    return Container(
      alignment: Alignment.center,
      width: 15.0,
      height: 15.0,
      decoration: BoxDecoration(
        color: CustomColors.purple95,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Text(
        '10',
        style: TextStyle(color: Colors.white, fontSize: 10.0),
      ),
    );
  }
}
