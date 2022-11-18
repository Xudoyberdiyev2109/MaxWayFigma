import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'condensation_page.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "О сервисе",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 56,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        "Политика конденциалности",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Condetattion(),))

                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        "Лицензионные соглашения",
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
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        "Работа в MaxWay",
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
            ),
          ],
        ),
      ),
    );
  }
}
