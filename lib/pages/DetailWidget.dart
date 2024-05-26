import 'package:flutter/material.dart';
import 'package:monappstore/pages/Debut.dart';
import 'package:monappstore/pages/NordWidget.dart';

import 'Accueil.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    final site = [
      /*
      {
        "Nom":"Litoral",
        "Lieu":"Douala",
        "nbre":15,
        "picture":"musemaritinadouala.png",
      },

      {
        "Nom":"Nord",
        "Lieu":"Garoua",
        "nbre":15,
        "picture":"Extremenord.png",
      },
      {
        "Nom":"Adamaoua",
        "Lieu":"Ngaoundere",
        "nbre":15,
        "picture":"marouaRhumsiki.png",
      },
      {
        "Nom":"Ouest",
        "Lieu":"Bafoussam",
        "nbre":15,
        "picture":"ouest.png",
      },
      {
        "Nom":"Est",
        "Lieu":"Bertoua",
        "nbre":15,
        "picture":"villagepouss.png",
      },
      {
        "Nom":"Sud-ouest",
        "Lieu":"Buea",
        "nbre":15,
        "picture":"packmozogogokoro.png",
      },
      {
        "Nom":"Nord-ouest",
        "Lieu":"Bamenda",
        "nbre":15,
        "picture":"packbenoue.png",
      },
      {
        "Nom":"Extreme-nord",
        "Lieu":"Maroua",
        "nbre":15,
        "picture":"sorciercrabe.png",
      },
      {
        "Nom":"Nord",
        "Lieu":"Douala",
        "Nbre":15,
        "picture":"packwaza.png",
      },
      */
      {
        "Nom":"Centre",
        "Lieu":"Yaoundé",
        "nbre":15,
        "picture":"Yaounde.png",
      },
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: 400,
                height: 650,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: ListView.builder(
                    itemCount: site.length,
                    itemBuilder: (context, index){
                      final Site = site[index];
                      final nom = Site["Nom"];
                      final lieu = Site["Lieu"];
                      final nbre = Site["Nbre"];
                      final images = Site['picture'];
                      String names = 'Centre';
                      return Card(
                        child: ListTile(
                          leading:Image.asset("assets/images/site/$images"),
                          title: Text("$nom"),
                          subtitle: Text("$lieu"),
                          trailing:ElevatedButton.icon(
                            style: ButtonStyle(),
                            onPressed: (){
                              if (Site['Nom'] == names){
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(pageBuilder: (_,__,___)=>NordWidget()
                                  ),
                                );
                              }
                              else{
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                          "Site introuvable",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                );
                              }
                            },
                            icon: Icon(Icons.more_vert,),
                            label: Text('+'),
                          ),
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
 ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(pageBuilder: (_,__,___)=>Littoral()
                                  ),
                                );
                              },
                              child: Text("Voir plus"),
                          )
* */