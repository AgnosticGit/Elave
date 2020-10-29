import 'package:elave/index.dart';

class RollingTile extends StatefulWidget {
  RollingTile({
    this.firstSide,
    this.secondSide,
    this.openTile,
    this.closeTile,
    this.duration,
  });

  final Widget firstSide;
  final Widget secondSide;
  final Function(Function) openTile;
  final Function(Function) closeTile;
  final Duration duration;

  State<RollingTile> createState() => _RollingTileState();
}

class _RollingTileState extends State<RollingTile> {
  double degree = 0;

  void initState() {
    super.initState();
    if (widget.openTile != null) widget.openTile(openTile);
    if (widget.closeTile != null) widget.closeTile(closeTile);
  }

  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(degree),
      alignment: FractionalOffset.center,
      child: degree < pi / 2
          ? widget.firstSide
          : Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: widget.secondSide,
            ),
    );
  }

  void openTile() {
    Timer.periodic(widget.duration ?? Duration(milliseconds: 3), (timer) {
      if (degree < pi) {
        if (this.mounted) setState(() => degree += pi / 100);
      } else {
        timer.cancel();
      }
    });
  }

  void closeTile() {
    Timer.periodic(widget.duration ?? Duration(milliseconds: 3), (timer) {
      if (degree > 0) {
        if (this.mounted) setState(() => degree -= pi / 100);
      } else {
        if (this.mounted) setState(() => degree = 0);
        timer.cancel();
      }
    });
  }
}
