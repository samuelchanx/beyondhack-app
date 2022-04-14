import 'package:animate_do/animate_do.dart';
import 'package:beyondhack/data/repository/auth/auth_repository.dart';
import 'package:beyondhack/features/auth/pages/login_page.dart';
import 'package:beyondhack/features/home/home_page.dart';
import 'package:beyondhack/routes/app_pages.dart';
import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:beyondhack/utils/globals.dart';
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
  bool? isLoggedIn;

  @override
  void initState() {
    super.initState();
    // Try to sign in with stored credentials if logged in
    _reLoginIfAvailable();
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoggedIn == null) {
        logger.wtf('is logged in still null');
      }
      if (isLoggedIn ?? false) {
        Get.offAllNamed(routeName(HomePage));
      } else {
        Get.offAllNamed(routeName(LoginPage));
      }
    });
  }

  Future<void> _reLoginIfAvailable() async {
    try {
      await AuthRepository.instance.client.auth.signInWithStoredCredentials();
      logger.i('Logged in');
      isLoggedIn = true;
    } catch (e) {
      isLoggedIn = false;
      logger.i('Not logged in');
    }
  }

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
}
