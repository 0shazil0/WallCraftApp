import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDHgRuPKq4M30ZOogWSFvg2BN-gj9iFGd0",
            authDomain: "wallcraft-4b978.firebaseapp.com",
            projectId: "wallcraft-4b978",
            storageBucket: "wallcraft-4b978.appspot.com",
            messagingSenderId: "783204576923",
            appId: "1:783204576923:web:67e2d4e1577a26c705203e",
            measurementId: "G-NZKCP10XBY"));
  } else {
    await Firebase.initializeApp();
  }
}
