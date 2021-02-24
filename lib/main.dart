import 'package:flutter/material.dart';

void main() {
  runApp(TB());
}

class TB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Türk Bayrağı',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey,
          body: SafeArea(child: TurkBayragi(G: 350))),
    );
  }
}

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
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle)));
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

// Ölçüler:
// Uçkurluk: 1/30 x G,
// Bayrak Zemini: height= G,  width: 1.5 x G,
// Dış Ay Çapı: 0.5 x G,
// Dış Ay top: 0.25 x G,
// Dış Ay left: 0.25 x G,
// İç Ay Çapı: 0.4 x G,
// İç Ay top: 0.3 x G,
// İç Ay left: 0.3625 x G,
// Yıldız icon boyu: 0.25 x G,
// Yıldız left: 0.7 x G,
// Yıldız top: 0.375 x G,
