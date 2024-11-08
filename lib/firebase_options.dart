// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyA3k3NYrAf9v2dj2Yc0tIlHpm7nt6VLBMU',
    appId: '1:1058480950792:web:e571ae5f091479e2748bbd',
    messagingSenderId: '1058480950792',
    projectId: 'recipewise',
    authDomain: 'recipewise.firebaseapp.com',
    storageBucket: 'recipewise.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdfxsxMLC6hojwv5pJW3ChnI2eFrBaWms',
    appId: '1:1058480950792:android:f58602f8d2155fd8748bbd',
    messagingSenderId: '1058480950792',
    projectId: 'recipewise',
    storageBucket: 'recipewise.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNXRwF1aktYWI6xIhA8QU9DEZkYXFCDls',
    appId: '1:1058480950792:ios:e1d25a5964e515f6748bbd',
    messagingSenderId: '1058480950792',
    projectId: 'recipewise',
    storageBucket: 'recipewise.firebasestorage.app',
    iosBundleId: 'com.example.recipewise',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNXRwF1aktYWI6xIhA8QU9DEZkYXFCDls',
    appId: '1:1058480950792:ios:e1d25a5964e515f6748bbd',
    messagingSenderId: '1058480950792',
    projectId: 'recipewise',
    storageBucket: 'recipewise.firebasestorage.app',
    iosBundleId: 'com.example.recipewise',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA3k3NYrAf9v2dj2Yc0tIlHpm7nt6VLBMU',
    appId: '1:1058480950792:web:50cad94677503d91748bbd',
    messagingSenderId: '1058480950792',
    projectId: 'recipewise',
    authDomain: 'recipewise.firebaseapp.com',
    storageBucket: 'recipewise.firebasestorage.app',
  );

}