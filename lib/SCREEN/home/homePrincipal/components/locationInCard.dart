import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationInCard extends StatelessWidget {
  const LocationInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Seu endereço:",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black38,
                fontSize: 13,
              ),
            ),
          ),
          //
          Text(
            "XXXX-XXXX-XXXXX",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          //CPF:
          SizedBox(
            height: 5,
          ),
          Text(
            "Seu CPF:",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black38,
                fontSize: 12,
              ),
            ),
          ),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "XXX.XXX.XXX-XX",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.open_in_full,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
