import 'package:flutter/material.dart';
import 'package:module2_exam/Main/HomePage/Popularniy.dart';

// ignore: must_be_immutable
class MaxBurPage extends StatefulWidget {
  late bool post;

  MaxBurPage(this.post, {super.key});

  @override
  State<MaxBurPage> createState() => _MaxBurPageState();
}

class _MaxBurPageState extends State<MaxBurPage> {
  int _counter = 1;

  void ayirma(index) {}

  void hisobla() {
    setState(() {
      _counter++;
    });
  }

  List removes = List.generate(10, (index) => false);
  List<bool> list5 = List.generate(10, (index) => true);
  List<int> list4 = List.generate(10, (index) => 1);
  List son1 = List.generate(10, (index) => 1);
  List isTrue = List.generate(10, (index) => true);
  List isTrue1 = List.generate(10, (index) => true);
  bool Istrue = true;
  late int kup;
  late int narx = 25000;
  bool color = true;
  late int summa = 0;
  int bir = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Populyarniy();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
            ),
            child: Container(
              width: 190,
              height: 232,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffffffff),
              ),
              child: Column(
                children: [
                  Container(
                    width: 190,
                    height: 124,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xffEEE9F2),
                    ),
                    child: const Image(
                      image: AssetImage("images/burger.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 16, left: 8, bottom: 14, right: 75),
                    child: Text(
                      "Макс Бургер",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Istrue = !Istrue;
                      isTrue1[index] = !isTrue1[index];
                      setState(() {});
                    },
                    child: isTrue1[index]
                        ? Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          child: Container(
                            height: 40,
                            width: 154,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffE7E9E8),
                            ),
                            child: const Center(
                              child: Text(
                                "25 000 сум ",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xffE7E9E8),
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        son1[index]--;
                                        if (son1[index] < 1) {
                                          son1[index] = 1;
                                          Istrue = !Istrue;
                                          isTrue1[index] = !isTrue1[index];
                                        }
                                        setState(() {});
                                        _counter = 1;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                    )),
                              ),
                              Text("${son1[index]}"),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xffE7E9E8),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    son1[index]++;
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
        );
      }, childCount: 10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 2,
          mainAxisSpacing: 10,
          //crossAxisSpacing: 1,
          maxCrossAxisExtent: 200,
          mainAxisExtent: 220),
    );
  }
}
