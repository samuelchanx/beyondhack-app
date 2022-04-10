import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/components/gradient_decoration.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.logoTransparent.image(
            width: Get.width / 3,
          ),
        ],
      ).width(Get.width),
    );
  }
}
