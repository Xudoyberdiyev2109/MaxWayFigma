import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Orders/orders.dart';
import '../profile/profile page.dart';
import 'Main/HomePage/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  int activIcon = 0;
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const Buyurtma(),
    const Profil(),
  ];

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activIcon],
      bottomNavigationBar: BottomNavigationBar(iconSize: 10,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, color: Color(0xff51267D)),
        currentIndex: activIcon,
        enableFeedback: false,
        onTap: ((value) {
          activIcon = value;
          setState(() {});
        }),
        selectedItemColor: const Color(0xff51267D),
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("images/svg/Home1.svg"),
            icon: SvgPicture.asset("images/svg/Home.svg"),
            label: "Asosiy",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("images/svg/Buy2.svg"),
            icon: SvgPicture.asset("images/svg/Buy.svg"),
            label: "Mening buyurtmalarim",
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("images/svg/Profile2.svg"),
              icon: SvgPicture.asset("images/svg/Profile.svg"),
              label: "Profil"),
        ],
      ),
    );
  }
}
