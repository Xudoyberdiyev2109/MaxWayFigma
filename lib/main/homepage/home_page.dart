import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../discount_page.dart';
import '../burger_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List foto = [
    "images/img.png",
    "images/img_1.png",
    "images/img_2.png",
  ];
  List listText = ["Maksi Boks", "Donar blyudo", "Xot Dog"];
  List<bool> isTrue = List.generate(13, (index) => false);
  bool post = true;
  final List _list = [
    "Макси бокс",
    "Лаваш",
    "Клаб-сэндвич",
    "Шаурма",
    "Донар-кебаб",
    "Шаурма Баггет ",
    "Бургерь",
    "Хот-Дог",
    "Снеки",
    "Гарниры",
    "Соусы",
    "Напитки",
    "Десерт"
  ];

  @override
  void initState() {
    post = true;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xffFFFFFF)),
        toolbarHeight: 70,
        backgroundColor: const Color(0xffFFFFFF),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: SizedBox(
              height: 40,
              child: TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    prefixIcon: const Image(
                      image: AssetImage("images/Search.jpg"),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),fillColor: const Color(0xffF8F6FA),
                     filled: true,
                    hintText: "Поиск",
                    hintStyle: const TextStyle(
                      decorationColor: Colors.grey,
                      color: Color(0xff818C99),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    )),
              )),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12,top: 12,left: 8,right: 8),
                          child: InkWell(
                            onTap: () {
                              isTrue[index] = !isTrue[index];
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  bottom: 8,top: 8,left: 12,right: 12 ),


                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isTrue[index]
                                    ? const Color(0xff51267D)
                                    : const Color(0xffFFFFFF),
                              ),
                              child: Text(
                                "${_list[index]}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: isTrue[index]
                                        ? const Color(0xffffffff)
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(top: 16, left: 12, bottom: 8),
                sliver: SliverToBoxAdapter(
                    child: SizedBox(
                  width: 151,
                  height: 28,
                  child: Text(
                    "Рекомендуем",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                )),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    height: 88,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ActionPage("${foto[index]}",
                                    "${listText[index]}", "${listText[index]}");
                              }));
                            },
                            child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 7.27),
                                height: 88,
                                width: 112.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("${foto[index]}")),
                                )),
                          );
                        }),
                  ),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(top: 16, left: 12, bottom: 8),
                sliver: SliverToBoxAdapter(
                    child: SizedBox(
                  width: 151,
                  height: 28,
                  child: Text(
                    "Бургеры",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                )),
              ),
              MaxBurPage(post),
            ]),
          ),
        ],
      ),
    );
  }
}
