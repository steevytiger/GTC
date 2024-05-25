import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monappstore/pages/Debut.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const  DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                accountName: Text("AGTGN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                accountEmail: Text("Application guide touristique grand nord"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/touriste.png"),
                ),
              ),
          ),
          const  SizedBox(height: 15,),
          const  ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.red,),
            title: Text("Accueil",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 2,
            width: 5,
            color:const  Color(0x9E484849),
          ),
          const  ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.redAccent,),
            title: Text("Profil",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          const  SizedBox(height: 15,),
          Container(
            height: 2,
            width: 5,
            color:const  Color(0x9E9E9EFF),
          ),
          const ListTile(
            leading: Icon(Icons.notifications,color: Colors.red,),
            title: const Text("Notifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 2,
            width: 5,
            color: const Color(0x9E9E9EFF),
          ),
          const  ListTile(
            leading: const Icon(Icons.settings,color: Colors.red,),
            title: const Text("Paramètre",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
          ),
          Container(
            margin:const  EdgeInsets.only(top: 10),
            height: 2,
            width: 5,
            color: Color(0x9E9E9EFF),
          ),
          const SizedBox(height: 15,),
          const ListTile(
            leading: Icon(Icons.info_sharp,color: Colors.red,),
            title: const Text("A propos",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.orange),),
          ),
          ListTile(
            title: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_,__,___)=> const Debut()));
                },
                label: const Text(
                  "Se deconnecter",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.redAccent),),
              icon: const Icon(
                Icons.logout_sharp,
                color: Colors.red,
              ),
            ),

          ),
        ],
      ),
    );
  }
}
