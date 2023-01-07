import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget ScoreView(String score, Color color) {
    return Container(
      height: (MediaQuery.of(context).size.height) * 0.05,
      width: (MediaQuery.of(context).size.width) * 0.3,
      padding: const EdgeInsets.only(right: 10),
      alignment: Alignment.centerRight,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Color(0xff5E80E1),
                spreadRadius: 0.2,
                offset: Offset(1, 1))
          ],
          color: Color(0xff061745)),
      child: Text(
        score,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.w900,
            fontSize: 20,
            fontFamily: "Prompt-SemiBold"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      height: (MediaQuery.of(context).size.height),
      color: const Color(0xff162e75),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.05,
          width: (MediaQuery.of(context).size.width) * 0.15,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xfffacb04), Color(0xfff0b100)],
              )),
          child: Image(
            image:
                AssetImage("assets/images/${icons['HEADER']?['headerMenu']}"),
          ),
        ),
        ScoreView("50", const Color(0xff5aecff)),
        ScoreView("0", const Color(0xffffd426)),
      ]),
    );
  }
}
