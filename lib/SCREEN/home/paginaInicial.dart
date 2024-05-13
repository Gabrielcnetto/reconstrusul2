import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconstrusul/SCREEN/home/Profile/MyProfileScreen.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/components/header.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/homePrincipal.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/map/MapGeral.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  int selecScreen = 0;
  List<Map<String, Object>>? _screensSelect;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screensSelect = [
      {
        'tela': const HomePrincipal(),
      },
        {
        'tela': const MapGeral(),
      },
      {
        'tela': const myProfileView(),
      },
     
    ];
  }

  void newScreen(int index) {
    setState(() {
      selecScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screensSelect![selecScreen]['tela'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        iconSize: 25,
        selectedLabelStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        unselectedLabelStyle:GoogleFonts.poppins(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ) ,
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: newScreen,
        currentIndex: selecScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Áreas de risco",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Acesso",
          ),
          
        ],
      ),
    );
  }
}
