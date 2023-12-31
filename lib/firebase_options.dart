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
    apiKey: 'AIzaSyCimXwSPCZbmz_1h2PQc1tbCIz8dxXZKkc',
    appId: '1:554515620700:web:aef58a5bb4e6d500985799',
    messagingSenderId: '554515620700',
    projectId: 'yatri-backend',
    authDomain: 'yatri-backend.firebaseapp.com',
    storageBucket: 'yatri-backend.appspot.com',
    measurementId: 'G-1X8FS2CMT6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCInoVRQfQxMHtNzFvMwvcRvvottEFFcD4',
    appId: '1:554515620700:android:34937a1455020299985799',
    messagingSenderId: '554515620700',
    projectId: 'yatri-backend',
    storageBucket: 'yatri-backend.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHwc27t330VKeGPQfGSg-IpnsF0pKE3Ko',
    appId: '1:554515620700:ios:13756e854c782693985799',
    messagingSenderId: '554515620700',
    projectId: 'yatri-backend',
    storageBucket: 'yatri-backend.appspot.com',
    iosBundleId: 'com.yatri.travelapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHwc27t330VKeGPQfGSg-IpnsF0pKE3Ko',
    appId: '1:554515620700:ios:8040559a10b95cce985799',
    messagingSenderId: '554515620700',
    projectId: 'yatri-backend',
    storageBucket: 'yatri-backend.appspot.com',
    iosBundleId: 'com.yatri.travelapp.RunnerTests',
  );
}
