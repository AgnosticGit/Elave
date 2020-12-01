import 'package:elave/index.dart';

class FindPeopleItem extends StatelessWidget {
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://sun9-19.userapi.com/c845217/v845217637/1f902d/s0VPEIX1ssU.jpg',
            ),
          ),
        ),
        child: Container(
          height: 120.0,
          child: Stack(
            children: [
              Positioned(
                top: 10.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Blurred(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        left: 10.0,
                        right: 10.0,
                      ),
                      color: Colors.black.withOpacity(0.1),
                      child: Column(
                        children: [
                          Text(
                            'Vyacheslav Elizariev',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            'Russia, Ufa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          FindPeopleLanguagesLevel(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10.0,
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Align(
                    child: Container(
                      width: 15.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://ak.picdn.net/shutterstock/videos/6483341/thumb/1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
