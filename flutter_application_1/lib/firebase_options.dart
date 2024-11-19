// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBdTdoU7wdYoCMMG2L_br1KFFF7WUZid_Y',
    appId: '1:1063049645044:web:cc9e928347cc18222d87a1',
    messagingSenderId: '1063049645044',
    projectId: 'apex-great',
    authDomain: 'apex-great.firebaseapp.com',
    storageBucket: 'apex-great.firebasestorage.app',
    measurementId: 'G-TE33FFL1SM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkrdZVsa9uPGBTJP3mveT45ZRBt82FHks',
    appId: '1:1063049645044:android:a7a6d3984bf62fee2d87a1',
    messagingSenderId: '1063049645044',
    projectId: 'apex-great',
    storageBucket: 'apex-great.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDik-zqBU5G_iBMcsfZZ4XYweZdtz793so',
    appId: '1:1063049645044:ios:e8b9f6f5adcc337f2d87a1',
    messagingSenderId: '1063049645044',
    projectId: 'apex-great',
    storageBucket: 'apex-great.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDik-zqBU5G_iBMcsfZZ4XYweZdtz793so',
    appId: '1:1063049645044:ios:e8b9f6f5adcc337f2d87a1',
    messagingSenderId: '1063049645044',
    projectId: 'apex-great',
    storageBucket: 'apex-great.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBdTdoU7wdYoCMMG2L_br1KFFF7WUZid_Y',
    appId: '1:1063049645044:web:8c46fb3a5418d22b2d87a1',
    messagingSenderId: '1063049645044',
    projectId: 'apex-great',
    authDomain: 'apex-great.firebaseapp.com',
    storageBucket: 'apex-great.firebasestorage.app',
    measurementId: 'G-PLP0KF26Q5',
  );
}
