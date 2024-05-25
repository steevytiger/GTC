import 'package:flutter/material.dart';

import 'Accueil.dart';

class Debut extends StatelessWidget {
  const Debut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/touriste.png"),
              Padding(padding: EdgeInsets.only(bottom: 15),),
              const Text('AGTG',
                style: TextStyle(fontSize: 28,),
              ),
              const Text('Application Guide Touristique'),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder:(_,__,___) => Accueil()
                      )
                  );
                },
                icon: Icon(Icons.start,color: Colors.white,),
                label: Text('Commencer',
                  style: TextStyle(
                      fontSize: 20,
                    color: Colors.white
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
