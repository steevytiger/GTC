import'package:flutter/material.dart';
import 'package:monappstore/pages/Accueil.dart';
import 'package:monappstore/pages/Connexion.dart';

import 'NordWidget.dart';

class Inscrire extends StatefulWidget {
  const Inscrire({super.key});

  @override
  State<Inscrire> createState() => _InscrireState();
}

class _InscrireState extends State<Inscrire> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Application guide touristique du centre",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF)
      ),
      home: Scaffold(
        body: Container(
          color: Color(0x174870FF),
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.only(top: 50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Inscription",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xFFE64A19),
                  ),
                ),
                SizedBox(height: 20,),
                //Nom
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nom",
                        hintText: "Entrer votre nom",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Champs obligatoires";
                        }
                        return null;
                      },

                  ),
                ),
                // prenom
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Prenom",
                      hintText: "Entrer votre prenom",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Champs obligatoires";
                      }
                      return null;
                    },

                  ),
                ),
                // email
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Adress Email",
                      hintText: "exmple:exemple@gmail.com",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Champs obligatoires";
                      }
                      return null;
                    },

                  ),
                ),
                // mot de passe
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Mot de passe",
                      hintText: "mot de passe",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Champs obligatoires";
                      }
                      return null;
                    },

                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // backgroundColor: Color(Colors.red),
                    ),
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        Navigator.push(
                            context,
                            PageRouteBuilder(pageBuilder: (_,__,___)=>NordWidget()),
                        );
                      }

                    },
                    child: Text("Se connecter"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF343868),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Text(
              "AGT",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange),
            ),
            subtitle: Text("Application guide touristique du grand-nord"),
            trailing: Icon(Icons.elderly,color: Color(0xFFEB0841),),
          )
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 400,
                  height: 400,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 2),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Text(
                          "Se connecter",
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xF1A518FF)),
                      )
                    ],
                  )


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


Container(
margin: EdgeInsets.all(20),
child: Form(
child: Column(
children: [
TextFormField(
decoration: InputDecoration(
labelText: "Nom",
hintText: "Entrer votre nom",
border: OutlineInputBorder(),
),
),
SizedBox(height: 10,),
SizedBox(
width: 50,
height: 20,
child: ElevatedButton(
onPressed: (){},
child: Text("Se connecter")),
)
],
),
),
);
*/
/*

*/