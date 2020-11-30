import 'package:elave/index.dart';

class RotatingTile extends StatefulWidget {
  RotatingTile({
    @required this.controller,
    this.firstSide,
    this.secondSide,
    this.duration,
  }) : assert(controller != null);

  final RotatingTileController controller;
  final Widget firstSide;
  final Widget secondSide;
  final Duration duration;

  State<RotatingTile> createState() => _RotatingTileState();
}

class _RotatingTileState extends State<RotatingTile> {
  double degree = 0;
  bool isOpened = false;

  void initState() {
    widget.controller.openTile = openTile;
    widget.controller.closeTile = closeTile;
    widget.controller.roll = roll;
    super.initState();
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
    if (!isOpened) {
      Timer.periodic(widget.duration ?? Duration(milliseconds: 3), (timer) {
        if (degree < pi) {
          if (this.mounted) setState(() => degree += pi / 100);
        } else {
          setState(() => isOpened = true);
          widget.controller.isOpened = true;
          timer.cancel();
        }
      });
    }
  }

  void closeTile() {
    if (isOpened) {
      Timer.periodic(widget.duration ?? Duration(milliseconds: 3), (timer) {
        if (degree > 0) {
          if (this.mounted) setState(() => degree -= pi / 100);
        } else {
          if (this.mounted) {
            setState(() {
              degree = 0;
              isOpened = false;
            });
          }

          widget.controller.isOpened = false;
          timer.cancel();
        }
      });
    }
  }

  void roll() {
    if (isOpened) {
      closeTile();
    } else {
      openTile();
    }
  }
}
