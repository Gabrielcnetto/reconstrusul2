import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';

class InitialMessage extends StatelessWidget {
  const InitialMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  "assetImages/brasaors.webp",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "Vamos Reconstruir o nosso \n Rio Grande do sul",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: Text(
                    "Vamos juntos mostrar a força do povo gaúcho",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(AppRoutes.login);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            height: 60,
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 5,
                            ),
                            child: Text(
                              "Já tenho conta",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed(AppRoutes.RegisterProfile);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade600,
                                borderRadius: BorderRadius.circular(10)),
                            height: 60,
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 5,
                            ),
                            child: Text(
                              "Primeiro Acesso",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
