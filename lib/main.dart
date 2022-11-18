import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module2_exam/Orders/orders_page.dart';
import '../profile/profile_page.dart';
import 'Main/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff51267D),
        scaffoldBackgroundColor: const Color(0xffF8F6FA),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0.5,
          scrolledUnderElevation: 0.5,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const HomePage2(),
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
    const Orders1(),
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
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 10,
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
            label: "Главное",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset("images/svg/Buy2.svg"),
            icon: SvgPicture.asset("images/svg/Buy.svg"),
            label: "Мои заказы",
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("images/svg/Profile2.svg"),
              icon: SvgPicture.asset("images/svg/Profile.svg"),
              label: "Личное"),
        ],
      ),
    );
  }
}
