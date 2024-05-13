import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reconstrusul/SCREEN/home/homePrincipal/map/class/bairros.dart';

class MapGeral extends StatefulWidget {
  const MapGeral({super.key});

  @override
  State<MapGeral> createState() => _MapGeralState();
}

class _MapGeralState extends State<MapGeral> {
  final Set<Polygon> _polygons = {};
  final Set<Marker> _markers = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadPolygons();
  }

  void _loadPolygons() {
    for (Bairro bairro in bairros) {
      _polygons.add(
        Polygon(
          polygonId: PolygonId(bairro.nome),
          points: bairro.pontos,
          strokeWidth: 2,
          strokeColor: bairro.corBorda,
          fillColor: bairro.corPreenchimento,
        ),
      );

      _markers.add(
        Marker(
          icon: BitmapDescriptor.defaultMarker,
          markerId: MarkerId(bairro.nome),
          position: _calculateCentroid(bairro.pontos),
          onTap: () {
            _showBairroInfo(bairro);
          },
        ),
      );
    }
  }

  void _showBairroInfo(Bairro bairro) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.close),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Fechar",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://repercussaoparanhana.com/wp-content/uploads/2019/07/WhatsApp-Image-2019-07-09-at-15.56.12.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://www.radiotaquara.com.br/wp-content/uploads/2020/11/Rua-Caibate-622x415.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://repercussaoparanhana.com/wp-content/uploads/2024/01/1-Pavimenta%C3%A7%C3%A3o-Rua-Arno-Faiock-FOTO-Divulga%C3%A7%C3%A3o-Pref-Taquara.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "${bairro.nome}",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Risco: ${bairro.perigo}",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Urgência: ${bairro.urgencia}",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Precipitação:",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "120MM",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.water_drop,
                          color: Colors.blue.shade600,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Distância:",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1km",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.blind,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    "Se a distância deste local for menor que 2km, procure um local seguro imediatamente. \n \nVocê pode solicitar ajuda com o botão abaixo também:",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Solicitar Ajuda",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  LatLng _calculateCentroid(List<LatLng> points) {
    double latitudeSum = 0.0;
    double longitudeSum = 0.0;

    for (LatLng point in points) {
      latitudeSum += point.latitude;
      longitudeSum += point.longitude;
    }

    double latitudeAverage = latitudeSum / points.length;
    double longitudeAverage = longitudeSum / points.length;

    return LatLng(latitudeAverage, longitudeAverage);
  }

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _initialPosition = const LatLng(
      -29.637090,
      -50.845586,
    ); //POSICAO INICIAL DE PAROBÉ

    return GoogleMap(
      mapType: MapType.satellite,
      initialCameraPosition: CameraPosition(
        target: _initialPosition,
        zoom: 14,
      ),
      onMapCreated: (GoogleMapController controller) {
        setState(() {
          mapController = controller;
        });
      },
      markers: _markers,
      polygons: _polygons,
    );
  }
}
