import 'package:flutter/material.dart';
import 'package:module2_exam/profile/Branches/Buyuk.dart';
import 'package:module2_exam/profile/Branches/Chilonzor.dart';
import 'package:module2_exam/profile/Branches/Magic_city.dart';
import 'package:module2_exam/profile/Branches/Mir.dart';
import 'package:module2_exam/profile/Branches/Nekst.dart';
import 'package:module2_exam/profile/Branches/Parkent.dart';
import 'package:module2_exam/profile/Branches/Samarqand.dart';
import 'package:module2_exam/profile/Branches/Sayram.dart';
import 'package:module2_exam/profile/Branches/Sergeli.dart';
import 'package:module2_exam/profile/Branches/Yunusibod.dart';
import 'package:module2_exam/profile/Branches/qozoq.dart';
import 'package:module2_exam/profile/Branches/sirk.dart';

import 'Yunusobod.dart';

class Branches extends StatefulWidget {
  const Branches({Key? key}) : super(key: key);

  @override
  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Branches",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Color(0xffDFDFDF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("images/max.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "ТЦ Парус",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "улица Катартал, 60/5",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.grey[300],
                                  minimumSize: Size(90, 30)),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.access_time,
                                      color: Colors.purpleAccent, size: 15),
                                  Text(
                                    "09:00 - 03:00",
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontSize: 15),
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.grey[300],
                                  minimumSize: Size(100, 30)),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.call,
                                      color: Colors.purpleAccent, size: 15),
                                  Text(
                                    "+998712005400",
                                    style: TextStyle(
                                        color: Colors.purple, fontSize: 15),
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MagicCity(),
              SizedBox(
                height: 10,
              ),
              Samarqand(),
              SizedBox(
                height: 10,
              ),
              Parkent(),
              SizedBox(
                height: 10,
              ),
              Yunusobod(),
              SizedBox(
                height: 10,
              ),
              Sirk(),
              SizedBox(
                height: 10,
              ),
              Nekst(),
              SizedBox(
                height: 10,
              ),
              Chilonzor(),
              SizedBox(
                height: 10,
              ),
              Mir(),
              SizedBox(
                height: 10,
              ),
              Sayram(),
              SizedBox(
                height: 10,
              ),
              Segeli(),
              SizedBox(
                height: 10,
              ),
              Buyuk(),
              SizedBox(
                height: 10,
              ),
              Yunisobod(),
              const SizedBox(
                height: 10,
              ),
              Qozoq(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
