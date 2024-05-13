import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Bairro {
  final String nome;
  final String urgencia;
  final String perigo;
  final String descricao;
  final List<LatLng> pontos;
  final Color corPreenchimento;
  final Color corBorda;

  Bairro({
    required this.urgencia,
    required this.nome,
    required this.perigo,
    required this.descricao,
    required this.pontos,
    required this.corPreenchimento,
    required this.corBorda,
  });
}

List<Bairro> bairros = [
  Bairro(
    urgencia: "Alta",
    nome: 'Bairro Funil',
    descricao: 'Bairro próximo a escola Marieta',
    perigo: "Alagamento",
    pontos: [
      LatLng(-29.630870, -50.853257),
      LatLng(-29.631395, -50.854593),
      LatLng(-29.633192, -50.853605),
      LatLng(-29.632619, -50.852232),
    ],
    corPreenchimento: Colors.red.withOpacity(0.8),
    corBorda: Colors.black,
  ),

  // Adicione mais bairros conforme necessário
];
