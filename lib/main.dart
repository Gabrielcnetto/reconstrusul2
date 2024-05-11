import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reconstrusul/PROVIDER/auth/authAccount.dart';
import 'package:reconstrusul/PROVIDER/auth/registerAccount.dart';
import 'package:reconstrusul/PROVIDER/auth/screenverify/verifyAuth.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';
import 'package:reconstrusul/SCREEN/home/paginaInicial.dart';
import 'package:reconstrusul/SCREEN/initial/initialMessage.dart';
import 'package:reconstrusul/SCREEN/login/loginScreen.dart';
import 'package:reconstrusul/SCREEN/register/registerProfile.dart';
import 'package:reconstrusul/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Chame primeiro aqui ele inicia os widgets
  //so apos dar o start, ele inicia o firebase, aqui o app ja esta carregado e funcionando
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RegisterAccountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthSettings(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ReconstruSul',
        routes: {
          AppRoutes.verificationLogin: (ctx) => VerifyAuth(),
          AppRoutes.login: (ctx) => LoginScreen(),
          AppRoutes.PaginaInicial: (ctx) => PaginaInicial(),
          AppRoutes.InitialMessage: (ctx) => InitialMessage(),
          AppRoutes.RegisterProfile: (ctx) => RegisterProfile(),
        },
      ),
    );
  }
}
