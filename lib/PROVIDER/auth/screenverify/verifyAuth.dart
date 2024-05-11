import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';

class VerifyAuth extends StatelessWidget {
  const VerifyAuth({super.key});

   @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, snpshot) {
        if (snpshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snpshot.hasData) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).pushNamed(
             AppRoutes.PaginaInicial
            );
          });
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.of(context).pushNamed(AppRoutes.InitialMessage);
          });
        }
        return Container();
      },
    );
  }
}