import 'package:elave/index.dart';

class AuthTextFormField extends StatelessWidget {
  AuthTextFormField({
    this.hintText,
    this.textField,
    this.initialValue,
    this.opacity = 1,
    this.height,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.obscureText = false,
    this.icon = const SizedBox(),
    this.onChanged,
  });

  final String hintText;
  final AuthTextField textField;
  final String initialValue;
  final double opacity;
  final double height;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool obscureText;
  final Widget icon;
  final Function(String) onChanged;

  Widget build(BuildContext contet) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 300),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: height,
        child: Stack(
          children: [
            TextFormField(
              enableSuggestions: enableSuggestions,
              autocorrect: autocorrect,
              obscureText: obscureText,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: -10.0,
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.blue2F,
                    width: 1.0,
                  ),
                ),
              ),
              initialValue: initialValue,
              onChanged: (text) => onChanged(text),
            ),
            Positioned(
              bottom: 8.0,
              right: 10.0,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
