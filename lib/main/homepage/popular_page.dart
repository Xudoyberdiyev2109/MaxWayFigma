import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopulyarniyState();
}

class _PopulyarniyState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Бургеры",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 325,
            child:
                const Image(image: AssetImage("images/ger.jpg"), fit: BoxFit.cover),
          ),
          SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,),
            child: Text(
              "Макс Бургер",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              " Закручен со вкусом! Кусочки нежнейшего куриногофиле в хрустящей остерой чили оригинальнойпанировке с сочными листьями салата, кусочкамипомидора и нежным соусом мы завернули впшеничную лепешку и поджарили в тостере",
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xffF8F6FA),
    );
  }
}
