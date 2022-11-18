import 'package:flutter/material.dart';

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
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Филиали"),
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(12),
            itemBuilder: (context, index) => Container(
                  height: 308,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFFFFF),
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
                              fontSize: 20),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "30 Navoiy shoh ko'chasi, Тошкент 100129",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.grey[300],
                                    minimumSize: const Size(90, 30)),
                                onPressed: () {},
                                child: Row(
                                  children: const [
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
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: 10) //

        );
  }
}
