import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Orders2 extends StatefulWidget {
  const Orders2({Key? key}) : super(key: key);

  @override
  State<Orders2> createState() => _OrderState();
}

class _OrderState extends State<Orders2> {
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
                "В прошлом месяцы",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600),
              )),
          Container(
            // width: 250,
            height: 103,
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
                      "Заказ №125",
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
                            "69 500 сум",
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
                      "19.03.2021",
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
            // width: 250,
            height: 103,
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
                      "Заказ №64",
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
                            "34 500 сум",
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
                      "12.06.2021",
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
            // width: 250,
            height: 103,
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
                      "Заказ №246",
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
                            "98 500 сум",
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
                      "02.03.2021",
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
          //const Orders3(),
        ],
      ),
    );
  }
}
