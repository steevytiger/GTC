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
      "title":"les sorciers de crabe au grand nord",
      "place":"ras",
      "adresse":"ngaroua",
      "picture":"assets/images/site/sorciercrabe.png",
      "visiteur":10
    },
    {
      "title":"Marché de pouss",
      "place":"ras",
      "adresse":"contient divers produits",
      "picture":"assets/images/site/Extremenord.png",
      "visiteur":10
    },
    {
      "title":"Village de pouss",
      "place":"ras",
      "adresse":"situé dans l'arrondissement de Maga",
      "picture":"assets/images/site/villagepouss.png",
      "visiteur":10
    },
    {
      "title":"Mozogo Gohoro",
      "place":"pacifiée",
      "adresse":"ngaroua",
      "picture":"assets/images/site/packmozogogokoro.png",
      "visiteur":10
    },
    {
      "title":"pack de waza",
      "place":"inombres",
      "adresse":"Renferme plusieurs mamifère",
      "picture":"assets/images/site/packwaza.png",
      "visiteur":10
    },
    {
      "title":"Pack national de Kalamaloué",
      "place":"constitutifs",
      "adresse":"garoua",
      "picture":"assets/images/site/packbenoue.png",
      "visiteur":10
    },
    {
      "title":"PackdeGokoro",
      "place":"diverses",
      "adresse":"Situé région de l'extreme nord",
      "picture":"assets/images/site/Rhumsiki.png",
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
                  "30 sites du grand nord ",
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
        "Grand-Nord",
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


