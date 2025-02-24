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
    apiKey: 'AIzaSyA3_gv27W64WRCX_p1Bl_0k9PkcSsgyNJs',
    appId: '1:118735652017:web:a54b1662c70542115c0e90',
    messagingSenderId: '118735652017',
    projectId: 'chateo-d0bad',
    authDomain: 'chateo-d0bad.firebaseapp.com',
    storageBucket: 'chateo-d0bad.firebasestorage.app',
    measurementId: 'G-8C5B1L84VY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDo3o3PpPhFmvqGNSBICdnvqPJgmyKITc0',
    appId: '1:118735652017:android:f005a3830225e65c5c0e90',
    messagingSenderId: '118735652017',
    projectId: 'chateo-d0bad',
    storageBucket: 'chateo-d0bad.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyCsP0LmOisMzPNcP3yb6X9jVblwlpeWU',
    appId: '1:118735652017:ios:bd10a225d6071d785c0e90',
    messagingSenderId: '118735652017',
    projectId: 'chateo-d0bad',
    storageBucket: 'chateo-d0bad.firebasestorage.app',
    iosBundleId: 'com.chateo.app.chateoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyCsP0LmOisMzPNcP3yb6X9jVblwlpeWU',
    appId: '1:118735652017:ios:bd10a225d6071d785c0e90',
    messagingSenderId: '118735652017',
    projectId: 'chateo-d0bad',
    storageBucket: 'chateo-d0bad.firebasestorage.app',
    iosBundleId: 'com.chateo.app.chateoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA3_gv27W64WRCX_p1Bl_0k9PkcSsgyNJs',
    appId: '1:118735652017:web:dafc00374297f1125c0e90',
    messagingSenderId: '118735652017',
    projectId: 'chateo-d0bad',
    authDomain: 'chateo-d0bad.firebaseapp.com',
    storageBucket: 'chateo-d0bad.firebasestorage.app',
    measurementId: 'G-CYF5ZGPVTX',
  );
}
