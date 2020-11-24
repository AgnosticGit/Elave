import 'package:elave/index.dart';

class MessagesTapper extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<MessagesTapperController>(
      init: MessagesTapperController(),
      builder: (tapperController) {
        return Container(
          height: 50.0,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: CustomColors.blue29)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: CustomColors.blue29,
                      ),
                    ),
                  ),
                  child: Align(child: Images.clip),
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                flex: 9,
                child: TextField(
                  maxLines: tapperController.maxLines,
                  onChanged: (_) => tapperController.onTappingText(),
                  controller: tapperController.textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                    hintText: 'Message',
                    hintStyle: TextStyle(color: CustomColors.blue6E),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTranslateButton(tapperController),
                    const SizedBox(width: 10.0),
                    _buildSendButton(tapperController),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Container _buildTranslateButton(MessagesTapperController tapperController) {
    if (tapperController.textFieldState == TextFieldState.full) {
      return Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Align(child: Images.translate),
      );
    } else {
      return Container(
        width: 35.0,
        height: 35.0,
      );
    }
  }

  Widget _buildSendButton(MessagesTapperController tapperController) {
    if (tapperController.textFieldState == TextFieldState.full) {
      return Container(
        width: 35.0,
        height: 35.0,
        child: Icon(
          Icons.send,
          size: 30.0,
          color: Colors.white,
        ),
      );
    } else {
      return Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Align(child: Images.mic),
      );
    }
  }
}
