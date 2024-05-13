import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormsAndUpdateProfile extends StatelessWidget {
  const FormsAndUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dados Pessoais",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            //INICIO DAS INFORMAÇõES

            //NOME DO USUÁRIO - >INICIO
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.black12))),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Gabriel Netto",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //NOME DO USUÁRIO - >FIM

            //TELEFONE DO USUARIO - INICIO
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.black12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.call,
                          size: 40,
                          color: Colors.green.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(51) 9 8344-8088",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade300,
                      ),
                      child: Text(
                        "Alterar",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //TELEFONE DO USUARIO - FIM

            //CPF DO USUÁRIO - INICIO
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.black12))),
                child: Row(
                  children: [
                    Icon(
                      Icons.badge,
                      size: 40,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "xxx.xxx.xxx-xx",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //CPF DO USUÁRIO - FIM
            //LOCAL DO USUARIO - INICIO
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.black12))),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Expanded(
                        child: Text(
                          "Maria de Lourdes Ribeiro, 71, funil, parobé",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //LOCAL DO USUARIO - FIM
          ],
        ),
      ),
    );
  }
}
