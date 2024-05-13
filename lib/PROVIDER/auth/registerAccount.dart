import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterAccountProvider with ChangeNotifier {
  final authConfig = FirebaseAuth.instance;
  final database = FirebaseFirestore.instance;
  Future<void> createAccount(
      {required String email,required String password, required String telefone, required String nome}) async {

        
  await  authConfig.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    String userId = await authConfig.currentUser!.uid;
    print(userId);
    await database.collection("usuarios").doc(userId).set({
      "nome": nome,
      "email": email,
      "telefone": "(51) ${telefone}"
    });
    notifyListeners();
  }

   deslogar(){
    authConfig.signOut();
  }
}
