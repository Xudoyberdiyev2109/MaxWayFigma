import 'package:flutter/material.dart';

class Kondentatsiya extends StatefulWidget {
  const Kondentatsiya({Key? key}) : super(key: key);

  @override
  State<Kondentatsiya> createState() => _KondentatsiyaState();
}

class _KondentatsiyaState extends State<Kondentatsiya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Kondentatsiya siyosati",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 190,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[100]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Biz mijozlarimizni xursand qilamiz",style:   TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                SizedBox(height: 5,),
                Text("MaxWay kompaniyasining tarixi O'zbekiston Respublikasining jadal rivojlanayotgan bozorida ishlaydi va o'sib borayotgan bozor talabini qondirishga qaratilgan. So'nggi 4 yil ichida kompaniya ajoyib natijalarni namoyish etdi va asosiy faoliyati: Oziq-ovqat va ichimliklar orqali barqaror rivojlanib bormoqda.", style: TextStyle( fontSize: 17),)
              ],
            ),
          ),
    ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
