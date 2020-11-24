import 'package:elave/index.dart';

class ImagePickerWindow extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 90,
          width: 200,
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: CustomColors.blue12,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Text(
                'Select a source to upload a photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColors.blue91,
                  fontSize: 14.0,
                  fontFamily: Fonts.ANDADASC,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: Get.put(SignUpUserInfoController()).openCamera,
                    child: Images.camera,
                  ),
                  GestureDetector(
                    onTap: Get.put(SignUpUserInfoController()).openGallery,
                    child: Images.gallery,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
