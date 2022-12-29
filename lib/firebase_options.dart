import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions]
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCtRT507o6CGDm43i2iVdYKY2PiWgDWgB4',
    appId: '1:794281516674:web:448efdcf6d5d44842f5e9b',
    messagingSenderId: '794281516674',
    projectId: 'alesha-2a9ac',
    authDomain: 'alesha-2a9ac.firebaseapp.com',
    storageBucket: 'alesha-2a9ac.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnmwJ838rPzfIFytHKwmoFvgzC6LeLHiQ',
    appId: '1:794281516674:android:22488c8e026b726c2f5e9b',
    messagingSenderId: '794281516674',
    projectId: 'alesha-2a9ac',
    storageBucket: 'alesha-2a9ac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPkcOe4TtZwVC6q647FWS5uw-r1saPOwU',
    appId: '1:794281516674:ios:53abff99f591db942f5e9b',
    messagingSenderId: '794281516674',
    projectId: 'alesha-2a9ac',
    storageBucket: 'alesha-2a9ac.appspot.com',
    iosClientId:
        '794281516674-j8r2sbla7lslavfossfisul65m8vmr9u.apps.googleusercontent.com',
    iosBundleId: 'com.example.alesha',
  );
}
