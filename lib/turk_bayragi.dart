import 'package:flutter/material.dart';

class TurkBayragi extends StatelessWidget {
  double G;
  Widget yildiz;
  Widget kucukDaire;
  Widget buyukDaire;
  Widget kirmiziFon;
  Widget beyazFon;

  TurkBayragi({this.G}) {
    yildiz = Positioned(
        left: 0.7 * G,
        top: 0.375 * G,
        child: RotatedBox(
            quarterTurns: 3,
            child: Icon(Icons.star, color: Colors.white, size: 0.25 * G)));
    kucukDaire = Positioned(
      top: 0.3 * G,
      left: 0.3625 * G,
      child: Container(
          height: 0.4 * G,
          width: 0.4 * G,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle)),
    );
    buyukDaire = Positioned(
        top: 0.25 * G,
        left: 0.25 * G,
        child: Container(
            height: 0.5 * G,
            width: 0.5 * G,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle)));
    kirmiziFon = Positioned(
        left: 1 / 30 * G,
        child: Container(height: G, width: 1.5 * G, color: Colors.red));
    beyazFon =
        Container(height: G, width: 1.5 * G + 1 / 30 * G, color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotatedBox(
        quarterTurns: 1,
        child: Stack(
          children: [
            beyazFon,
            kirmiziFon,
            buyukDaire,
            kucukDaire,
            yildiz,
          ],
        ),
      ),
    );
  }
}
