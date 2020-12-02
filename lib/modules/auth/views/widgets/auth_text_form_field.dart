import 'package:elave/index.dart';

class AuthTextFormField extends StatelessWidget {
  AuthTextFormField({
    this.hintText,
    this.textField,
    this.initialValue,
    this.opacity = 1,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.obscureText = false,
    this.icon = const SizedBox(),
    this.onChanged,
    this.focusNode,
    this.onTap,
    this.visible = true,
  });

  final String hintText;
  final AuthTextField textField;
  final String initialValue;
  final double opacity;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool obscureText;
  final Widget icon;
  final Function(String) onChanged;
  final FocusNode focusNode;
  final Function onTap;
  final bool visible;

  Widget build(BuildContext contet) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 300),
      child: Visibility(
        visible: visible,
        maintainState: true,
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
              focusNode: focusNode,
              onTap: onTap,
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
