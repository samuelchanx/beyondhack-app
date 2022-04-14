// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD72CajX2lqpbCL7f3TW3mmJQz62DZP03A',
    appId: '1:408230980540:web:ea3f6d7ccba937c5f859b9',
    messagingSenderId: '408230980540',
    projectId: 'vast-nectar-346605',
    authDomain: 'vast-nectar-346605.firebaseapp.com',
    storageBucket: 'vast-nectar-346605.appspot.com',
    measurementId: 'G-V10YRZLKTM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCt-D8yw3niyKfX8NIU3b8FxKtKlvChYws',
    appId: '1:408230980540:android:8d02809ad23e87a4f859b9',
    messagingSenderId: '408230980540',
    projectId: 'vast-nectar-346605',
    storageBucket: 'vast-nectar-346605.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkYQ9U5sjvutGfiJKvq5m-FzS73YPAmrI',
    appId: '1:408230980540:ios:ef7ec4b6b19c8d80f859b9',
    messagingSenderId: '408230980540',
    projectId: 'vast-nectar-346605',
    storageBucket: 'vast-nectar-346605.appspot.com',
    iosClientId: '408230980540-tcu4okp63b3mvkeqmn1sqt3gtqcisur9.apps.googleusercontent.com',
    iosBundleId: 'com.beyondshare.app',
  );
}