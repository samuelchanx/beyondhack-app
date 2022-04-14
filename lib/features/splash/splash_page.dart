import 'package:animate_do/animate_do.dart';
import 'package:beyondhack/data/repository/auth/auth_repository.dart';
import 'package:beyondhack/features/auth/pages/login_page.dart';
import 'package:beyondhack/routes/app_pages.dart';
import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideInDown(
        child: Assets.images.logoTransparent
            .image(
              width: Get.width / 3,
              height: Get.width / 3,
            )
            .center(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Try to sign in with stored credentials if logged in
    runAsync(AuthRepository.instance.client.auth.signInWithStoredCredentials());
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(routeName(LoginPage));
    });
  }
}
