import 'dart:ui';
import 'package:elave/index.dart';

class SmoothBlur extends StatefulWidget {
  SmoothBlur({this.child});

  final Widget child;

  State<SmoothBlur> createState() => SmoothBlurState();
}

class SmoothBlurState extends State<SmoothBlur> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: widget.child,
      ),
    );
  }
}
