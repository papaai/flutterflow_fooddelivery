import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_8f8YQGw02iubyWy5nzWCpcMdQi873m8",
            authDomain: "food-delivery-c0178.firebaseapp.com",
            projectId: "food-delivery-c0178",
            storageBucket: "food-delivery-c0178.firebasestorage.app",
            messagingSenderId: "261952581045",
            appId: "1:261952581045:web:601c6b9f5660ec3df23dfc",
            measurementId: "G-TGNMQW2BQG"));
  } else {
    await Firebase.initializeApp();
  }
}
