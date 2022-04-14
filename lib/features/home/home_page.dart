import 'package:beyondhack/data/repository/auth/auth_repository.dart';
import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/components/chat_bubble.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: Get.height * 0.15,
              width: Get.width,
            ).decorated(color: const Color(0xffC7CDCD)).positioned(top: 0),
            InteractiveViewer(
              child: Stack(
                children: [
                  Container(
                    height: 588,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.homeBackground.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const ChatBubble(
                    text: '🎨',
                  ).positioned(left: Get.width * 0.4, top: 20),
                  const ChatBubble(
                    text: '👚',
                    rotated: true,
                  ).positioned(left: Get.width * 0.2, top: 280),
                  const ChatBubble(
                    text: '😊',
                    rotated: true,
                  ).positioned(left: Get.width * 0.8, top: 180),
                ],
              ).height(
                Get.height * 0.7,
              ),
            ).positioned(
              left: 0,
              right: 0,
              top: Get.height * 0.15,
            ),
            SizedBox(
              height: Get.height * 0.15,
              width: Get.width,
            )
                .decorated(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0x9e828081), Color(0xff828081)],
                  ),
                )
                .positioned(bottom: 0),
          ],
        ),
      ),
    ).gestures(onTap: () {
      AuthRepository.instance.signOut();
    });
  }
}
