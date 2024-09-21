import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDR3tUwjSm-EtLWWn-kEc4wpL8GjJdPiaQ",
            authDomain: "final-project-3zm41n.firebaseapp.com",
            projectId: "final-project-3zm41n",
            storageBucket: "final-project-3zm41n.appspot.com",
            messagingSenderId: "240477721302",
            appId: "1:240477721302:web:2ea19f45df5fd7cf7d2f77"));
  } else {
    await Firebase.initializeApp();
  }
}
