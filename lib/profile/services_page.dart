import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'condensation.dart';
class Xizmatlar extends StatefulWidget {
  const Xizmatlar({Key? key}) : super(key: key);

  @override
  State<Xizmatlar> createState() => _XizmatlarState();
}

class _XizmatlarState extends State<Xizmatlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Xizmat haqida",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                     
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Kondentatsiya(),));
                    },
                    child: Text(
                      "  Kondetsatsiya siyosati",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),

                  ),
                  Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.grey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "  Litsenziya shartnomalari",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () => activate(),
                  ),
                  Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.grey,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "  MaxWayda ishlash",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                     onPressed: () => activate(),
                  ),
                  Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.grey,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
