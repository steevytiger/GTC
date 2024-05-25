import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monappstore/pages/ListeSiteWidget.dart';

import '../Widget/AppBarWidget.dart';
import '../Widget/DrawerWidget.dart';
import 'DetailWidget.dart';
import 'PartenaireWidget.dart';

class Accueil extends StatelessWidget {
  //const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          // Barre de recherche
          Padding(
              padding: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 15,
              ),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                      width: 200,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15
                        ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Quel site vous interresse ?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.segment_rounded),
                ],
              ),
            ),
          ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20,left: 10),
          child: Text(
            "Partenaires",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent),
          ),
          ),
          PartenaireWidget(),

          // listes des sites touristique du cameroun
          Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Tout les sites du Cameroun",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent),
            ),
          ),

          // items des sites Cameroun
          ListeSiteWidget(),

          // details te chaque site
          Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Site touristique du Cameroun",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.redAccent),
            ),
          ),

          // detail de chaque site touristique
          DetailWidget(),
        ],
      ),

      drawer:DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ]),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(
              CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,

        )
      ),
    );
  }
}
