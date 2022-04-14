import 'package:beyondhack/data/repository/auth/auth_repository.dart';
import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.homeBackground.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
