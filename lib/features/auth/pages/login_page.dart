import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/components/gradient_decoration.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:beyondhack/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:logger/logger.dart';
import 'package:sign_button/sign_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlutterLogin(
          title: 'BeyondShare',
          logo: AssetImage(Assets.images.logoTransparent.path),
          onLogin: (data) {
            logger.d(data);
          },
          onSignup: (data) {
            logger.d(data);
          },
          loginProviders: [
            LoginProvider(
              icon: FontAwesomeIcons.google,
              label: 'Google',
              callback: () async {
                // debugPrint('start google sign in');
                // await Future.delayed(loginTime);
                // debugPrint('stop google sign in');
                return null;
              },
            ),
            LoginProvider(
              icon: FontAwesomeIcons.facebookF,
              label: 'Facebook',
              callback: () async {
                // debugPrint('start facebook sign in');
                // await Future.delayed(loginTime);
                // debugPrint('stop facebook sign in');
                return null;
              },
            ),
          ],
          onSubmitAnimationCompleted: () {
            // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //   builder: (context) => DashboardScreen(),
            // ));
          },
          onRecoverPassword: (data) {
            logger.d(data);
          },
        ).width(Get.width),
      ),
    );
  }
}
