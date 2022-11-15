import 'package:flutter/material.dart';
class MaksiBoks extends StatefulWidget {
  MaksiBoks({Key? key, required this.child}) : super(key: key);
  final String child;

  @override
  State<MaksiBoks> createState() => _MaksiBoksState();
}

class _MaksiBoksState extends State<MaksiBoks> {
  bool istrue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
          istrue=!istrue;
          setState(() {

          });
        },
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: istrue? Colors.purple : Colors.white,
          ),
          child: Center(
              child: Text(
                widget.child,
                style: TextStyle(
                    color: istrue? Colors.white : Colors.black,fontSize: 15, fontStyle: FontStyle.italic),
              )),
        ),
      ),
    );
  }
}
