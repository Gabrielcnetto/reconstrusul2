import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/SCREEN/register/components/formulario.dart';

class RegisterProfile extends StatelessWidget {
  const RegisterProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      "assetImages/cuia.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Faça seu Registro",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Usamos para identificar você",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              FormulariocompletoRegistro(),
            ],
          ),
        ),
      ),
    );
  }
}
