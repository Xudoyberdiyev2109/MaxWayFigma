import 'package:flutter/material.dart';
class Yunisobod extends StatefulWidget {
  const Yunisobod({Key? key}) : super(key: key);

  @override
  State<Yunisobod> createState() => _YunisobodState();
}

class _YunisobodState extends State<Yunisobod> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              image: DecorationImage(
                  image: AssetImage("images/max.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Yunusobod Bozor",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                          "10:00 - 03:00",
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
                      children: const [
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
    );
  }
}
