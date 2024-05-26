import 'package:flutter/material.dart';

import 'ListeSiteWidget.dart';

class PartenaireWidget extends StatelessWidget {
  const PartenaireWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset("assets/images/site/gourverneuradamaoua.png",
                width: 70,
                    height: 70,),

              ),
              ),

            ],
          ),
        ),
    );
  }
}
