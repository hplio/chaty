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
    apiKey: 'AIzaSyAsiZcxQS5YjwfZXqU9eDhKHrFzlobJE3s',
    appId: '1:521387601482:web:02c23c5ea0d3af947e40b3',
    messagingSenderId: '521387601482',
    projectId: 'chaty-44145',
    authDomain: 'chaty-44145.firebaseapp.com',
    databaseURL: 'https://chaty-44145-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chaty-44145.appspot.com',
    measurementId: 'G-NE6H8QDG8H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8KMF0UWSEs1Y0odEY0ll0HjVjNEz0l2U',
    appId: '1:521387601482:android:fafc3d5a97cc8bf57e40b3',
    messagingSenderId: '521387601482',
    projectId: 'chaty-44145',
    databaseURL: 'https://chaty-44145-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chaty-44145.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9StFAQuxW4YzGlQN3epJTD8nREP6a5lQ',
    appId: '1:521387601482:ios:f0e628a3e1e770e87e40b3',
    messagingSenderId: '521387601482',
    projectId: 'chaty-44145',
    databaseURL: 'https://chaty-44145-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chaty-44145.appspot.com',
    iosBundleId: 'com.example.chaty',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9StFAQuxW4YzGlQN3epJTD8nREP6a5lQ',
    appId: '1:521387601482:ios:213b06e359c30b427e40b3',
    messagingSenderId: '521387601482',
    projectId: 'chaty-44145',
    databaseURL: 'https://chaty-44145-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chaty-44145.appspot.com',
    iosBundleId: 'com.example.chaty.RunnerTests',
  );
}
