import 'package:flutter/material.dart';
import 'package:monappstore/pages/Accueil.dart';

class NordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SiteNord (),
    );
  }
}

class SiteNord extends StatefulWidget {
  const SiteNord({super.key});

  @override
  State<SiteNord> createState() => _SiteNordState();
}

class _SiteNordState extends State<SiteNord> {
  int _currentIndex  = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nord(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VilleSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (index)=>setCurrentIndex(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.deepPurpleAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            label: 'Loisirs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acccueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class VilleSection extends StatefulWidget {
  const VilleSection({super.key});

  @override
  State<VilleSection> createState() => _VilleSectionState();
}

// contenu de tout es site du grand nord
class _VilleSectionState extends State<VilleSection> {

  final List villeNord = [
    {
      "title":"Zoo de Mvog-betsi",
      "place":"rue 12",
      "adresse":"Mvog-betsi",
      "picture":"assets/flutterapp/yaounderoute.png",
      "visiteur":10
    },
    {
      "title":"pack de yaoundé 6",
      "place":"rue 20",
      "adresse":"contient divers produits",
      "picture":"assets/flutterapp/vertetation.png",
      "visiteur":10
    },
    {
      "title":"La plage de konfolou",
      "place":"rue 4",
      "adresse":"situé à yaoundé 5",
      "picture":"assets/flutterapp/paille.png",
      "visiteur":10
    },
    {
      "title":"Catégrale de la paix",
      "place":"pacifiée",
      "adresse":"yaoundé quartier général",
      "picture":"assets/flutterapp/monument.png",
      "visiteur":10
    },
    {
      "title":"Charle Atangana",
      "place":"Atangana Cahrle",
      "adresse":"Allant vers le lycée leclair",
      "picture":"assets/flutterapp/charleatangana.png",
      "visiteur":10
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Site de yaoundé : 200",
                  style: TextStyle(fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200),
                ),
                Row(
                  children: [
                    Text(
                      "Fliters",
                      style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.w300),
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.filter_list)
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: villeNord.map((ville){
              return VilleCard(ville);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class VilleCard extends StatelessWidget {

  final Map villeData;
  VilleCard(this.villeData);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Image.asset(villeData['picture']),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow:[
         BoxShadow(
           color: Colors.grey.shade200,
           spreadRadius: 4,
           blurRadius: 6,
           offset: Offset(0, 3),
         )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)
              ),
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(villeData['picture']
                  ),
                fit: BoxFit.cover // cette propriete permet à l'image d'occuper tout le contenu
              )
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                    right: 1,
                    child:MaterialButton(
                      shape: CircleBorder(),
                      onPressed: null,
                      child: Icon(Icons.more_vert,color: Colors.red,),
                    )
                )
              ],
            ),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    villeData['title'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  villeData['adresse'],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  villeData['title'],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.red,
                      size: 14.0,
                    ),
                    Text(
                        villeData['place']
                    )
                  ],
                ),
                Text(
                  villeData['adresse'],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
        );;
  }
}

class Nord extends StatelessWidget implements PreferredSizeWidget{

  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context){
    return AppBar(
      leading: IconButton(
        onPressed:(){
          Navigator.push(
              context,
              PageRouteBuilder(pageBuilder: (_,__,___)=>Accueil())
          );
        },
        icon: Icon(Icons.arrow_back,color: Colors.red,),
      ),
      title: Text(
        "Yaoundé centre",
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed:(null),
          icon: Icon(Icons.leaderboard_rounded,color: Colors.red,),
        ),
        IconButton(
          onPressed:(null),
          icon: Icon(Icons.place,color: Colors.red,),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}


