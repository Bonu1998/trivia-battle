import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Widget scoreView(String value, Color textColor, String icon) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: (MediaQuery.of(context).size.width) * 0.3,
          constraints: const BoxConstraints(maxWidth: 150),
          padding: const EdgeInsets.only(right: 10),
          margin: const EdgeInsets.only(left: 10, right: 10),
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
            value,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                fontFamily: "Prompt-SemiBold"),
          ),
        ),
        SizedBox(
          height: 40,
          child: Image(
            image: AssetImage("assets/images/$icon"),
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width),
      height: (MediaQuery.of(context).size.height),
      color: const Color(0xff162e75),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        scoreView(
            "50", const Color(0xff5aecff), icons['HEADER']?['headerDiamond']),
        scoreView("0", const Color(0xffffd426), icons['HEADER']?['headerStar']),
      ]),
    );
  }
}
