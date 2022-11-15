import 'package:flutter/material.dart';

class Populyarniy extends StatefulWidget {
  const Populyarniy({Key? key}) : super(key: key);

  @override
  State<Populyarniy> createState() => _PopulyarniyState();
}

class _PopulyarniyState extends State<Populyarniy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Maksi Boxs Populyarniy Kt",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            child:
                Image(image: AssetImage("images/img_4.png"), fit: BoxFit.cover),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Maksi Boks Populyarniy KT",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Ma'lumot: classic go'shtli lavash, kartofel-fri,pepsi 0.3 l, tanlovli sous,sous ko'rinishlari komentariyada ko'rsatilgan",style: TextStyle(fontSize: 18),),
          )
        ],
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
