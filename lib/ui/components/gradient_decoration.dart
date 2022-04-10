import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';

const _gradientDecoration = BoxDecoration(
  gradient: RadialGradient(
    colors: [Color(0xffe1f3ef), Color(0xfffbe8db), Color(0xffd8e8ed)],
    stops: [0, 0.4270833432674408, 1],
    center: Alignment.topRight,
    radius: 0.5,
  ),
);

extension GradientWidgetData on Widget {
  Widget gradientDecoration() {
    return const DecoratedBox(decoration: _gradientDecoration);
  }
}

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.gradientBackground.path),
          // fit: BoxFit.contain,
        ),
      ),
      child: child,
    );
  }
}
