import 'package:flutter/material.dart';
import 'package:yu_gi_oh_tcg/page/home/home_page.dart';

/*
TP :
- Application avec minimum 2 vues:
  • Liste
  • Détail
- Données provenant de l'API de votre choix:
  • https://apilist.fun/
  • https://cutt.ly/XjIMafC
  • https://cutt.ly/UjIMohG
- Architecture BloC obligatoire
- App icône customisée
- Firebase - App Distribution (gbalas.sup@gmail.com)
- Fastlane

=====================================================================
* API utiliser *

Get all cards
https://db.ygoprodeck.com/api/v7/cardinfo.php
Get "named" card information
https://db.ygoprodeck.com/api/v7/cardinfo.php?name=${named}
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
