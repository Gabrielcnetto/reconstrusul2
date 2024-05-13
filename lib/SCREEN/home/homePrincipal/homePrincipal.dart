import 'package:flutter/material.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/components/OptionsUserData.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/components/header.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/news/newsInfs.dart';

class HomePrincipal extends StatelessWidget {
  const HomePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    double horizontalScreen = MediaQuery.of(context).size.width;
    double verticalScreen = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: horizontalScreen,
            height: verticalScreen * 0.85,
            child: HeaderHome(
              horizontalTela: horizontalScreen,
              verticalTela: verticalScreen,
            ),
          ),
          OptionsUserPersonalData(
            horizontal: horizontalScreen,
            vertical: verticalScreen,
          ),
          NoticiasUrgentesRegiao(
            horizontal: horizontalScreen,
            vertical: verticalScreen,
          ),
        ],
      ),
    );
  }
}
