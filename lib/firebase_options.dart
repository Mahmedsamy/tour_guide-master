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
    apiKey: 'AIzaSyB-J6lPbr7AY4SvP3lBP2m0IlBYlDdhlKU',
    appId: '1:182336979817:web:a28635d88e73deeca1b3f8',
    messagingSenderId: '182336979817',
    projectId: 'tour-guide-auth',
    authDomain: 'tour-guide-auth.firebaseapp.com',
    storageBucket: 'tour-guide-auth.appspot.com',
    measurementId: 'G-QCMRQLTRKC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNJpBCLs5e4DOUv3AdKMQwWv9IrKvFeQw',
    appId: '1:182336979817:android:ad6a5f993ab47ee1a1b3f8',
    messagingSenderId: '182336979817',
    projectId: 'tour-guide-auth',
    storageBucket: 'tour-guide-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAv_MltV8vYmksSXGdnEmXa47WC-cBnr0',
    appId: '1:182336979817:ios:4bd15d223de5f6e7a1b3f8',
    messagingSenderId: '182336979817',
    projectId: 'tour-guide-auth',
    storageBucket: 'tour-guide-auth.appspot.com',
    iosBundleId: 'com.example.tourGuide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAv_MltV8vYmksSXGdnEmXa47WC-cBnr0',
    appId: '1:182336979817:ios:75b3b9a5ea6ec7c0a1b3f8',
    messagingSenderId: '182336979817',
    projectId: 'tour-guide-auth',
    storageBucket: 'tour-guide-auth.appspot.com',
    iosBundleId: 'com.example.tourGuide.RunnerTests',
  );
}
