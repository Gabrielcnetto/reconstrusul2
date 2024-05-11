import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  final double horizontalTela;
  final double verticalTela;
  const HeaderHome({
    super.key,
    required this.horizontalTela,
    required this.verticalTela,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: horizontalTela,
      height: verticalTela * 0.8,
      color: Colors.green,
    );
  }
}
