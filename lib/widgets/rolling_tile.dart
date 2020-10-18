import 'package:elave/index.dart';

class RollingTile extends StatefulWidget {
  RollingTile({this.child, this.callback});

  final Widget child;
  final Function(Function) callback;

  State<RollingTile> createState() => _RollingTileState();
}

class _RollingTileState extends State<RollingTile> {
  double _degree = 0;

  void initState() {
    super.initState();
    widget.callback(roll);
  }

  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(_degree),
      alignment: FractionalOffset.center,
      child: widget.child,
    );
  }

  void roll() {
    Timer.periodic(Duration(milliseconds: 3), (timer) {
      if (_degree < pi) {
        setState(() => _degree += pi / 100);
      } else {
        widget.callback(unroll);
        timer.cancel();
      }
    });
  }

  void unroll() {
    Timer.periodic(Duration(milliseconds: 3), (timer) {
      if (_degree > 0) {
        setState(() => _degree -= pi / 100);
      } else {
        setState(() => _degree = 0);
        widget.callback(roll);
        timer.cancel();
      }
    });
  }
}
