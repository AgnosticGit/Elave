import 'package:elave/index.dart';

class RollingTile extends StatefulWidget {
  RollingTile({this.firstSide, this.secondSide, this.openTile, this.closeTile});

  final Widget firstSide;
  final Widget secondSide;
  final Function(Function) openTile;
  final Function(Function) closeTile;

  State<RollingTile> createState() => _RollingTileState();
}

class _RollingTileState extends State<RollingTile> {
  double _degree = 0;

  void initState() {
    super.initState();
    if (widget.openTile != null) widget.openTile(openTile);
    if (widget.closeTile != null) widget.closeTile(closeTile);
  }

  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(_degree),
      alignment: FractionalOffset.center,
      child: _degree < pi / 2
          ? widget.firstSide
          : Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: widget.secondSide,
            ),
    );
  }

  void openTile() {
    Timer.periodic(Duration(milliseconds: 3), (timer) {
      if (_degree < pi) {
        setState(() => _degree += pi / 100);
      } else {
        timer.cancel();
      }
    });
  }

  void closeTile() {
    Timer.periodic(Duration(milliseconds: 3), (timer) {
      if (_degree > 0) {
        setState(() => _degree -= pi / 100);
      } else {
        setState(() => _degree = 0);
        timer.cancel();
      }
    });
  }
}
