import'package:flutter/material.dart';

import 'Inscrire.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Se connecter'),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      PageRouteBuilder(pageBuilder: (_,__,___)=>Inscrire())
                  );
                },
                child: Text('Créer un compte'))
          ],
        ),
      ),
    );
  }
}
