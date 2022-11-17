import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module2_exam/Orders/orders2.dart';

class Orders1 extends StatefulWidget {
  const Orders1({super.key});

  @override
  State<Orders1> createState() => _BuyurtmaState();
}

class _BuyurtmaState extends State<Orders1> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffffffff),
        //centerTitle: false,
        toolbarHeight: 120,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 50, top: 68),
          child: Text(
            "Mening buyurtmalarim",
            style: TextStyle(fontSize: 28, color: Color(0xff000000)),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(400, 32),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 12, right: 19),
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.91),
                color: Color(0xffEFEFF4),
              ),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.96),
                    border: Border.all(width: 2, color: Color(0xffEFEFF4)),
                    // Creates border
                    color: Colors.white,
                  ),
                  tabs: const [
                    Text(
                      "Amaldagi buyurtmalar",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      "Buyurtmalar tarixi",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Orders2(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: SvgPicture.asset(
                "images/svg/a.svg",
                alignment: Alignment.topCenter,
              )),
        ],
      ),
    );
  }
}
