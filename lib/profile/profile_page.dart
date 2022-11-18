 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module2_exam/profile/edit profile.dart';
import 'Branches/branches_page.dart';
import 'settings_page.dart';
import 'services_page.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        toolbarHeight: 144,
        backgroundColor: const Color(0xffFFFFFF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 20,),
                Text(
                  "Алишер Тохиров",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "+998 99 859 91 70",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff818C99),
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const EditProfil();
                    },
                  ));
                },
                icon: SvgPicture.asset("images/svg/Edit.svg")
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            height: 64,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Branches(),
                      ));
                },
                child: Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: const Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(81, 38, 125, 0.05)),
                        child: SvgPicture.asset("images/svg/F.svg",)
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Филиали",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    SvgPicture.asset("images/svg/chevron.svg")
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 64,
            decoration: BoxDecoration(

              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Setting(),
                      ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(81, 38, 125, 0.05,)),
                      child:  SvgPicture.asset("images/svg/sozlama.svg")
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Настройки",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    SvgPicture.asset("images/svg/chevron.svg")
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 64,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Services(),
                      ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO( 81, 38, 125, 0.05,), ),
                      child:  SvgPicture.asset("images/svg/info2.svg")
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "О сервисе",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    SvgPicture.asset("images/svg/chevron.svg")
                  ],
                ),
              ),
            ),
          ),

        ]),
      ),
    );
  }
}

