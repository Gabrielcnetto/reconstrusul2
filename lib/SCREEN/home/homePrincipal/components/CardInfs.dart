import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/components/locationInCard.dart';

class CardInfsHome extends StatelessWidget {
  final double verticalTela;
  final double horizontalTela;
  const CardInfsHome({
    super.key,
    required this.horizontalTela,
    required this.verticalTela,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: verticalTela * 0.3,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: horizontalTela * 0.9,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15)),
          height: verticalTela * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.badge,
                          size: 19,
                          color: Colors.green.shade600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Seus dados",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.green.shade600,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.expand_more, color: Colors.green.shade600,),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LocationInCard(),
            ],
          ),
        ),
      ),
    );
  }
}
