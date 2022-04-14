import 'package:beyondhack/features/splash/splash_page.dart';
import 'package:beyondhack/firebase_options.dart';
import 'package:beyondhack/routes/app_pages.dart';
import 'package:beyondhack/ui/styles/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BeyondHack',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: routeName(SplashPage),
      getPages: AppPages.pages,
    );
  }
}
