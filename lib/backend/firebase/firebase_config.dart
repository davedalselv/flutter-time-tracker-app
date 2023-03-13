import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2lFIq47rts21QUTymXHNugWMthj-aTqE",
            authDomain: "timetracker-1b4f3.firebaseapp.com",
            projectId: "timetracker-1b4f3",
            storageBucket: "timetracker-1b4f3.appspot.com",
            messagingSenderId: "666815334874",
            appId: "1:666815334874:web:a43f265da615101cc518e3",
            measurementId: "G-QHD5P52KJV"));
  } else {
    await Firebase.initializeApp();
  }
}
