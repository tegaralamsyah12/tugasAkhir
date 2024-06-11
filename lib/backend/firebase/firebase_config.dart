import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDXsrGntmQqPA3kkyjm2tPdHxZKxAFkDP8",
            authDomain: "igirmranak-e9689.firebaseapp.com",
            projectId: "igirmranak-e9689",
            storageBucket: "igirmranak-e9689.appspot.com",
            messagingSenderId: "794516644007",
            appId: "1:794516644007:web:03bd464f75e6c90986fb82",
            measurementId: "G-R2WW38J4LZ"));
  } else {
    await Firebase.initializeApp();
  }
}
