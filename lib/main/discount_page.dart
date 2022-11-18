import 'package:flutter/material.dart';

class ActionPage extends StatelessWidget {
  String rasm;
  String text1;
  String text2;

  ActionPage(this.rasm, this.text1, this.text2, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F6FA),
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black),
        title: const Text(
          "Акции",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: 300,
        width: 400,
        child: Column(
          children: [
            Container(
                height: 228,
                width: 400,
                decoration: const BoxDecoration(

                ),
                child:  Image(image: AssetImage("images/im.png"),))
          ],
        ),
      ),
    );
  }
}
