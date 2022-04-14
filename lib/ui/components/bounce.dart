import 'package:flutter/material.dart';

/// Adapted from [Flutter bounce](https://pub.dev/packages/flutter_bounce)
class Bounce extends StatefulWidget {
  final VoidCallback? onTap;
  final Widget child;
  final Duration? tapDelayDuration;

  // This will get the data from the pages
  // Makes sure child won't be passed as null
  const Bounce({required this.child, this.tapDelayDuration, this.onTap}) : assert(child != null);

  @override
  BounceState createState() => BounceState();
}

class BounceState extends State<Bounce> with SingleTickerProviderStateMixin {
  late double _scale;

  // This controller is responsible for the animation
  AnimationController? _animate;

  //Getting the VoidCallack onPressed passed by the user
  VoidCallback? get onPressed => widget.onTap;

  // This is a user defined duration, which will be responsible for
  // what kind of bounce he/she wants
  Duration get tapDelayDuration => widget.tapDelayDuration ?? const Duration(milliseconds: 100);

  @override
  void initState() {
    //defining the controller
    _animate = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200), upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      }); // Can do something in the listener, but not required
    super.initState();
  }

  @override
  void dispose() {
    // To dispose the contorller when not required
    _animate?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animate!.value;
    return GestureDetector(
        onTap: _onTap,
        onTapDown: (_) {
          _animate!.forward();
        },
        onTapCancel: () {
          _animate!.reverse();
        },
        child: Transform.scale(
          scale: _scale,
          child: widget.child,
        ));
  }

  //This is where the animation works out for us
  // Both the animation happens in the same method,
  // but in a duration of time, and our callback is called here as well
  void _onTap() {
    //Firing the animation right away
    _animate!.forward();

    //Now reversing the animation after the user defined duration
    Future.delayed(tapDelayDuration, () {
      if (!mounted) {
        return;
      }
      _animate!.reverse();
      onPressed?.call();
    });
  }
}
