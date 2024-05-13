import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reconstrusul/PROVIDER/auth/registerAccount.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';

class myProfileView extends StatelessWidget {
  const myProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ()async {
         await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushNamed(AppRoutes.verificationLogin);
        },
        child: Text(
          "adasda",
        ),
      ),
    );
  }
}
