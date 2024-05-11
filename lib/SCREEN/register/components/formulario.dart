import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:reconstrusul/PROVIDER/auth/registerAccount.dart';

class FormulariocompletoRegistro extends StatefulWidget {
  const FormulariocompletoRegistro({super.key});

  @override
  State<FormulariocompletoRegistro> createState() =>
      _FormulariocompletoRegistroState();
}

class _FormulariocompletoRegistroState
    extends State<FormulariocompletoRegistro> {
  final emailControler = TextEditingController();
  final senhaControler = TextEditingController();
  final telefoneNumeroControler = TextEditingController();
  final nomeControler = TextEditingController();
  bool esconderSenha = true;

  void viewsenha() {
    setState(() {
      esconderSenha = !esconderSenha;
    });
  }

  Future<void> criandoConta() async {
    Provider.of<RegisterAccountProvider>(context, listen: false).createAccount(
      email: emailControler.text,
      password: senhaControler.text,
      telefone: telefoneNumeroControler.text,
      nome: nomeControler.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //COMPONENTES NOME - INICIO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Seu Nome completo",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                  child: TextFormField(
                    controller: nomeControler,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                //COMPONENTES DO E-MAIL - FIM
                SizedBox(
                  height: 25,
                ),
                //COMPONENTES NOME - FIM
                //COMPONENTES DO E-MAIL - INICIO
                Text(
                  "Seu e-mail",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                  child: TextFormField(
                    controller: emailControler,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                //COMPONENTES DO E-MAIL - FIM
                SizedBox(
                  height: 25,
                ),
                //COMPONENTES DA SENHA - INICIO
                Text(
                  "Crie uma senha e salve com você",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                          controller: senhaControler,
                          obscureText: esconderSenha,
                          decoration: InputDecoration(
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
                //COMPONENTES DA SENHA - FIM

                //COMPONENTES DO TELEFONE DE CONTATO - INICIO
                SizedBox(
                  height: 25,
                ),
                //COMPONENTES DA SENHA - INICIO
                Text(
                  "Seu telefone de contato",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
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
                      Text(
                        "(51)",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey.shade700),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: telefoneNumeroControler,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //COMPONENTES DO TELEFONE DE CONTATO - FIM

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: criandoConta,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Criar conta",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
