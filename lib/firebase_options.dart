// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDAXxkOpA3GB1X3H7A5g73sSqSQfRB1R8I',
    appId: '1:1066367024787:web:5917142033f28743959766',
    messagingSenderId: '1066367024787',
    projectId: 'todolist-32b38',
    authDomain: 'todolist-32b38.firebaseapp.com',
    storageBucket: 'todolist-32b38.appspot.com',
    measurementId: 'G-ZT1ZQR0EML',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1cjigFzvVffrEqVOfHoU_sSTVHWKqa4s',
    appId: '1:1066367024787:android:7f7166111aa09473959766',
    messagingSenderId: '1066367024787',
    projectId: 'todolist-32b38',
    storageBucket: 'todolist-32b38.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQadVY3PdEmc6r2x9drciNWUt0_YKyj-8',
    appId: '1:1066367024787:ios:7968dd374b6818d5959766',
    messagingSenderId: '1066367024787',
    projectId: 'todolist-32b38',
    storageBucket: 'todolist-32b38.appspot.com',
    androidClientId: '1066367024787-937q1a213mgf2uhrlorgvensbpqtnsni.apps.googleusercontent.com',
    iosClientId: '1066367024787-5a9tkai21siucqob230o4erbd21h062b.apps.googleusercontent.com',
    iosBundleId: 'com.example.stage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQadVY3PdEmc6r2x9drciNWUt0_YKyj-8',
    appId: '1:1066367024787:ios:7968dd374b6818d5959766',
    messagingSenderId: '1066367024787',
    projectId: 'todolist-32b38',
    storageBucket: 'todolist-32b38.appspot.com',
    androidClientId: '1066367024787-937q1a213mgf2uhrlorgvensbpqtnsni.apps.googleusercontent.com',
    iosClientId: '1066367024787-5a9tkai21siucqob230o4erbd21h062b.apps.googleusercontent.com',
    iosBundleId: 'com.example.stage',
  );
}