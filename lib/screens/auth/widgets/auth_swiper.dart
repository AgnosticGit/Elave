import 'package:elave/index.dart';

class AuthSwiper extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<AuthSwiperController>(
      init: AuthSwiperController(),
      builder: (authSwiperController) {
        return Container(
          width: Get.width,
          child: Stack(
            children: [
              AnimatedPositioned(
                left: 150,
                duration: Duration(milliseconds: authSwiperController.duration),
                child: Container(
                  child: AuthSignInForm(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
