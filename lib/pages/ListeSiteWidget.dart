import 'package:flutter/material.dart';

class ListeSiteWidget extends StatelessWidget {
  final String place ="Zone touristique";
  final int n =10;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
      child: Row(
        children: [

          // Centre site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/Yaounde.png",
                        height: 130,),
                    ),
                    Text(
                      "Yaoundé",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Yaoundé site",
                      style: TextStyle(
                        fontSize: 10,
                          color: Colors.orange
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$place"),
                        Text("$n"),
                        Icon(
                          Icons.read_more_outlined,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          //Extreme-nord site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/Extremenord.png",
                        height: 130,),
                    ),
                    Text(
                      "Extreme-nord",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Region de maroua",
                      style: TextStyle(
                        fontSize: 10,
                          color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$place"),
                        Text("$n"),
                        Icon(
                          Icons.read_more_outlined,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          // Nord site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/Yaounde.png",
                        height: 130,),
                    ),
                    Text(
                      "Centre Yaoundé",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 4),

                    Text(
                      "Region de Garoua",
                      style: TextStyle(
                        fontSize: 10,
                          color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$place"),
                        Text("$n"),
                        Icon(
                          Icons.read_more_outlined,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          // Adamaou site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/sorciercrabe.png",
                        height: 130,),
                    ),
                    Text(
                      "Adamaoua",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                          color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Region de Ngaoundéré",
                      style: TextStyle(
                        fontSize: 10,
                          color: Colors.orange
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$place"),
                        Text("$n"),
                        Icon(
                          Icons.read_more_outlined,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          // Ouest site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/ouest.png",
                        height: 130,),
                    ),
                    Text(
                      "Ouest",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Bafousam site",
                      style: TextStyle(
                        fontSize: 10,
                          color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre Total"),
                        Icon(
                          Icons.elderly,
                          color: Colors.red,
                          size: 26,
                        ),
                        Text("10"),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          //Nord-ouest site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/touriste.png",
                        height: 130,),
                    ),
                    Text(
                      "Nord-ouest",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Region de Bamenda",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre Total"),
                        Icon(
                          Icons.elderly,
                          color: Colors.red,
                          size: 26,
                        ),
                        Text("10"),
                      ],
                    )
                  ],
                ),
              ),
            ),),
          // Est site
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/site/packmozogogokoro.png",
                        height: 130,),
                    ),
                    Text(
                      "Est",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Region de bertoua",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre Total"),
                        Icon(
                          Icons.elderly,
                          color: Colors.red,
                          size: 26,
                        ),
                        Text("10"),
                      ],
                    )
                  ],
                ),
              ),
            ),),

        ],
      ),
    ),
    );
  }
}
