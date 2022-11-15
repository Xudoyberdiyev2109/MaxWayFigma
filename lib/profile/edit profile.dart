import 'package:flutter/material.dart';
import 'package:module2_exam/profile/profile page.dart';

class ProfilniTahrirlash extends StatefulWidget {
  const ProfilniTahrirlash({Key? key}) : super(key: key);

  @override
  State<ProfilniTahrirlash> createState() => _ProfilniTahrirlashState();
}

class _ProfilniTahrirlashState extends State<ProfilniTahrirlash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(),
          centerTitle: true,
          backgroundColor: Color(0xffFFFFFF),
          title: Text(
            "Profilni tahrirlash",
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
          )),
      backgroundColor: Color(0xffDFDFDF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Text("Ism",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 14,
                  )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF),
                ),
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "  Ism kiriting",
                      hoverColor: Colors.purple,
                      hintStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Telefon raqami",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 14,
                  )),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),color: Color(0xffFFFFFF),),
                height: 48,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: "  +998 88 377 44 55",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Tug'ilgan sana",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 14,
                  )),
              Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(0xffFFFFFF)),
                height: 48,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: "    21.09.2002",
                      hintStyle: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ),
              SizedBox(
                height: 395,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff51267D),
                    minimumSize: Size(400, 48)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Profil();
                      },
                    ),
                  );
                },
                child: Text(
                  "Tasdiqlash",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
