import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/ROTAS/AppRoutes.dart';

class OptionsUserPersonalData extends StatelessWidget {
  final double horizontal;
  final double vertical;
  const OptionsUserPersonalData({
    super.key,
    required this.horizontal,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //dados pessoais - inicio
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.ScreenDadosProfile,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.3,
                    color: Colors.grey.shade200,
                  ),
                ),
                alignment: Alignment.center,
                width: horizontal * 0.22,
                height: vertical * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.badge,
                      size: 30,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Dados",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                          fontSize: 11,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 2,
            ),
            //dados pessoais fim
            //SEU LOCAL INICIO
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.3,
                  color: Colors.grey.shade200,
                ),
              ),
              alignment: Alignment.center,
              width: horizontal * 0.22,
              height: vertical * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 30,
                    color: Colors.green.shade600,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Seu local",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 2,
            ),
            //SEU LOCAL - FIM
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.3,
                  color: Colors.grey.shade200,
                ),
              ),
              alignment: Alignment.center,
              width: horizontal * 0.22,
              height: vertical * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    size: 30,
                    color: Colors.green.shade600,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Adicicionar",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}
