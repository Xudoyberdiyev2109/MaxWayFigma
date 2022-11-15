import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module2_exam/Orders/orders3.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 6),
              child: const Text(
                "O'tgan oylar",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600),
              )),
          Container(
            width: 371,
            height: 96,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding:
                    EdgeInsets.only(left: 12, top: 14, bottom: 6),
                    child: Text(
                      "Buyurtma № 132",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff000000)),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "39 500 so'm",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          )),
                      Padding(
                          padding: EdgeInsets.only(right: 19),
                          child:
                          SvgPicture.asset("images/svg/chevron.svg")),
                    ],
                  ),
                ),
                const Padding(
                    padding:
                    EdgeInsets.only(left: 12, bottom: 14, top: 6),
                    child: Text(
                      "02.03.2020",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff818C99)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: 371,
            height: 96,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                    EdgeInsets.only(left: 12, top: 14, bottom: 6),
                    child: Text(
                      "Buyurtma № 132",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff000000)),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "39 500 so'm",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          )),
                      Padding(
                          padding: EdgeInsets.only(right: 19),
                          child:
                          SvgPicture.asset("images/svg/chevron.svg")),
                    ],
                  ),
                ),
                Padding(
                    padding:
                    EdgeInsets.only(left: 12, bottom: 14, top: 6),
                    child: Text(
                      "02.03.2020",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff818C99)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: 371,
            height: 96,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                    EdgeInsets.only(left: 12, top: 14, bottom: 6),
                    child: Text(
                      "Buyurtma № 132",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff000000)),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "39 500 so'm",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          )),
                      Padding(
                          padding: EdgeInsets.only(right: 19),
                          child:
                          SvgPicture.asset("images/svg/chevron.svg")),
                    ],
                  ),
                ),
                Padding(
                    padding:
                    EdgeInsets.only(left: 12, bottom: 14, top: 6),
                    child: Text(
                      "02.03.2020",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff818C99)),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Order3(),
        ],
      ),
    );
  }
}
