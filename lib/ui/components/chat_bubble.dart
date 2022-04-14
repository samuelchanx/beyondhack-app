import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Assets.svgs.chatBubble.svg(),
        const Text('🎨').fontSize(18).positioned(top: 10, left: 14),
      ],
    );
  }
}
