import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAWuJARFmDScR1J-RoNEZZsf9XO8B6W0-I",
            authDomain: "buddy-gcp.firebaseapp.com",
            projectId: "buddy-gcp",
            storageBucket: "buddy-gcp.appspot.com",
            messagingSenderId: "901428067370",
            appId: "1:901428067370:web:af3c4cf129442925929753",
            measurementId: "G-M7GP98E9W6"));
  } else {
    await Firebase.initializeApp();
  }
}
