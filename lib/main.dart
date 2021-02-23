import 'package:flutter/material.dart';

import 'turk_bayragi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
