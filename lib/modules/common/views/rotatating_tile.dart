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
  Timer openTimer;
  Timer closeTimer;

  void initState() {
    widget.controller.showFirstSide = showFirstSide;
    widget.controller.showSecondSide = showSecondSide;
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

  void showFirstSide() {
    if (openTimer != null && closeTimer != null) {
      closeTimer.cancel();
      openTimer.cancel();
    }

    openTimer = Timer.periodic(
      widget.duration ?? Duration(milliseconds: 3),
      (timer) {
        isOpened = true;
        widget.controller.isOpened = true;
        if (degree < pi) {
          if (this.mounted) setState(() => degree += pi / 100);
        } else {
          timer.cancel();
        }
      },
    );
  }

  void showSecondSide() {
    if (openTimer != null && closeTimer != null) {
      closeTimer.cancel();
      openTimer.cancel();
    }

    closeTimer = Timer.periodic(
      widget.duration ?? Duration(milliseconds: 3),
      (timer) {
        isOpened = false;
        if (degree > 0) {
          if (this.mounted) setState(() => degree -= pi / 100);
        } else {
          if (this.mounted) degree = 0;
          widget.controller.isOpened = false;
          timer.cancel();
        }
      },
    );
  }

  void roll() {
    if (isOpened) {
      showSecondSide();
    } else {
      showFirstSide();
    }
  }
}
