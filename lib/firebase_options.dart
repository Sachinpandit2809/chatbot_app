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
    apiKey: 'AIzaSyD58-AeHOlchUP_wWuPXsfAPo0GDMmdVQM',
    appId: '1:1054116855652:web:77c892c11e8ab1b277c471',
    messagingSenderId: '1054116855652',
    projectId: 'chatbot-app-aa5ce',
    authDomain: 'chatbot-app-aa5ce.firebaseapp.com',
    storageBucket: 'chatbot-app-aa5ce.appspot.com',
    measurementId: 'G-98NFWXJMPD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgjQnj2WsRq0PMRjnM5Nuyhk6rqcbHAtw',
    appId: '1:1054116855652:android:e9b197fb0a27f3b177c471',
    messagingSenderId: '1054116855652',
    projectId: 'chatbot-app-aa5ce',
    storageBucket: 'chatbot-app-aa5ce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRw19y8mPBc3P9H4hR_b4iSxmapCc32mA',
    appId: '1:1054116855652:ios:38ce55fe52689da977c471',
    messagingSenderId: '1054116855652',
    projectId: 'chatbot-app-aa5ce',
    storageBucket: 'chatbot-app-aa5ce.appspot.com',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRw19y8mPBc3P9H4hR_b4iSxmapCc32mA',
    appId: '1:1054116855652:ios:38ce55fe52689da977c471',
    messagingSenderId: '1054116855652',
    projectId: 'chatbot-app-aa5ce',
    storageBucket: 'chatbot-app-aa5ce.appspot.com',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD58-AeHOlchUP_wWuPXsfAPo0GDMmdVQM',
    appId: '1:1054116855652:web:74023a2bf7dfba2377c471',
    messagingSenderId: '1054116855652',
    projectId: 'chatbot-app-aa5ce',
    authDomain: 'chatbot-app-aa5ce.firebaseapp.com',
    storageBucket: 'chatbot-app-aa5ce.appspot.com',
    measurementId: 'G-TKFL9C3SBG',
  );
}
