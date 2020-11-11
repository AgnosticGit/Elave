import 'package:elave/index.dart';

class ProfileForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue10,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2,
            stops: [0, 0.3, 0.5],
            colors: [
              CustomColors.blue4E,
              CustomColors.blue29,
              CustomColors.blue10,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.2),
              const SizedBox(height: 20.0),
              const SizedBox(height: 50.0),
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                width: Get.width * 0.95,
                height: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF2F4C80)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Stack(
                  children: [],
                ),
              )
              // AuthSwiper(),
            ],
          ),
        ),
      ),
    );
  }
}
