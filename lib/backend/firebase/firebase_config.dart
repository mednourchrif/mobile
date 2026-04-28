import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD1X4sPXB4XCt78ZQfswRL3w-ZPQOCFciM",
            authDomain: "mobile-5erhpn.firebaseapp.com",
            projectId: "mobile-5erhpn",
            storageBucket: "mobile-5erhpn.firebasestorage.app",
            messagingSenderId: "464889864395",
            appId: "1:464889864395:web:490c161aef3e750d4dfb4e"));
  } else {
    await Firebase.initializeApp();
  }
}
