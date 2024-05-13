import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/SCREEN/home_barOptions_Dados/components/formsAndUpdate.dart';

class ScreenDadosProfile extends StatelessWidget {
  const ScreenDadosProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 22,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Text(
                        "Suas informações",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.network(
                        "https://hips.hearstapps.com/hmg-prod/images/of-facebook-mark-zuckerberg-walks-to-lunch-following-a-news-photo-1683662107.jpg?crop=0.665xw:0.476xh;0.162xw,0.101xh&resize=1200:*",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              FormsAndUpdateProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
