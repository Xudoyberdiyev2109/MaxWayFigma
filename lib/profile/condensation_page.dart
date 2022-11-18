import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Condetattion extends StatefulWidget {
  const Condetattion({Key? key}) : super(key: key);

  @override
  State<Condetattion> createState() => _CondetattionState();
}

class _CondetattionState extends State<Condetattion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Политика конденциалности",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 180,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffFFFFFF)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Мы делаем клиентов счастливыми",style:   TextStyle(fontWeight: FontWeight.w500, fontSize: 17),),
                SizedBox(height: 5,),
Text("История компании MaxWay работает на быстрорастущем рынке Республики Узбекистан и ориентирована на удовлетворение растущего спроса рынка. Компания продемонстрировала отличные результаты за последние 4 лет и устойчиво растет за счет основного направления бизнеса: Продукты питания и напитки.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,),)              ],
            ),
          ),
    ),
      ),

    );
  }
}
