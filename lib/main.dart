import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monappstore/pages/Accueil.dart';
import 'package:monappstore/pages/Connexion.dart';
import 'package:monappstore/pages/debut.dart';

import 'Widget/AppBarWidget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application guide touristique du grand nord",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF)
      ),
      routes: {
        "/":(context) => Debut(),
      },
    );
  }
}



