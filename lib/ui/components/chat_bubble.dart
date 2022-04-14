import 'dart:math';

import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool rotated;
  final Function? onTap;
  const ChatBubble({
    Key? key,
    required this.text,
    this.rotated = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(rotated ? pi : 0),
          child: Assets.svgs.chatBubble.svg(),
        ),
        Text(text).fontSize(18).positioned(top: 10, left: 14),
      ],
    ).bounce(onTap: () {
      onTap?.call();
    });
  }
}
