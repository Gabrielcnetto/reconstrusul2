import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';

import '../../PROVIDER/auth/authAccount.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool esconderSenha = true;

  void viewsenha() {
    setState(() {
      esconderSenha = !esconderSenha;
    });
  }

  final Emailcontroler = TextEditingController();

  final senhaControler = TextEditingController();


  Future<void> login()async{
     Provider.of<AuthSettings>(context,listen:false).login(Emailcontroler.text, senhaControler.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Voltar",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        "assetImages/cuia.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Acesse a sua Conta.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Colors.green.shade600),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Use os dados que você usou ao fazer seu primeiro acesso!",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                      fontSize: 23,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                //EMAIL INICIO
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.green.shade600,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(15, 15),
                      topRight: Radius.elliptical(15, 15),
                      bottomLeft: Radius.elliptical(15, 15),
                      bottomRight: Radius.elliptical(15, 15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  child: TextFormField(
                    controller: Emailcontroler,
                    decoration: InputDecoration(
                      label: Text(
                        "Seu e-mail",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                //EMAIL FIM
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.green.shade600,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(15, 15),
                      topRight: Radius.elliptical(15, 15),
                      bottomLeft: Radius.elliptical(15, 15),
                      bottomRight: Radius.elliptical(15, 15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: esconderSenha,
                          controller: senhaControler,
                          decoration: InputDecoration(
                            label: Text(
                              "Sua Senha",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: viewsenha,
                        child: Icon(
                          esconderSenha == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Primeiro Acesso?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.RegisterProfile);
                      },
                      child: Text(
                        "Crie a sua conta",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    login();
                    Navigator.of(context).pushReplacementNamed(AppRoutes.verificationLogin);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Entrar",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
