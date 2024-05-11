import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthSettings with ChangeNotifier {
  final authSettings = FirebaseAuth.instance;

  Future<void> login(String email, String password) async {
    authSettings.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  

}
