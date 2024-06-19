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
    apiKey: 'AIzaSyDreQCNmimnvoJESFbMslPUgkdvICMPHII',
    appId: '1:963992434095:web:406c48053c1ba180112b5a',
    messagingSenderId: '963992434095',
    projectId: 'firsttrialdupli',
    authDomain: 'firsttrialdupli.firebaseapp.com',
    databaseURL: 'https://firsttrialdupli-default-rtdb.firebaseio.com',
    storageBucket: 'firsttrialdupli.appspot.com',
    measurementId: 'G-139K4Z1083',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDU2HsJPg0aTJ95Shh_CQV82NHXFmqHV6Q',
    appId: '1:963992434095:android:307b70e652459b49112b5a',
    messagingSenderId: '963992434095',
    projectId: 'firsttrialdupli',
    databaseURL: 'https://firsttrialdupli-default-rtdb.firebaseio.com',
    storageBucket: 'firsttrialdupli.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBv-biGKHBMDhgfWmB06vEgJhQrwA11Rt4',
    appId: '1:963992434095:ios:5f4399765dffb6b8112b5a',
    messagingSenderId: '963992434095',
    projectId: 'firsttrialdupli',
    databaseURL: 'https://firsttrialdupli-default-rtdb.firebaseio.com',
    storageBucket: 'firsttrialdupli.appspot.com',
    iosBundleId: 'com.example.dubli',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBv-biGKHBMDhgfWmB06vEgJhQrwA11Rt4',
    appId: '1:963992434095:ios:5f4399765dffb6b8112b5a',
    messagingSenderId: '963992434095',
    projectId: 'firsttrialdupli',
    databaseURL: 'https://firsttrialdupli-default-rtdb.firebaseio.com',
    storageBucket: 'firsttrialdupli.appspot.com',
    iosBundleId: 'com.example.dubli',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDreQCNmimnvoJESFbMslPUgkdvICMPHII',
    appId: '1:963992434095:web:ebc62e875703407a112b5a',
    messagingSenderId: '963992434095',
    projectId: 'firsttrialdupli',
    authDomain: 'firsttrialdupli.firebaseapp.com',
    databaseURL: 'https://firsttrialdupli-default-rtdb.firebaseio.com',
    storageBucket: 'firsttrialdupli.appspot.com',
    measurementId: 'G-NX43Z2T3BD',
  );
}
