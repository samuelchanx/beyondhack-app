import 'package:beyondhack/features/auth/pages/login_page.dart';
import 'package:beyondhack/features/home/home_page.dart';
import 'package:beyondhack/features/splash/splash_page.dart';
import 'package:get/get.dart';

String routeName<T>(T route) => '/$route';

class AppPages {
  static final pages = <GetPage>[
    GetPage(page: () => const SplashPage(), name: routeName(SplashPage)),
    GetPage(page: () => const LoginPage(), name: routeName(LoginPage)),
    GetPage(page: () => const HomePage(), name: routeName(HomePage)),
  ];
}
