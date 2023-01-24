import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/round.dart';

class DailyBattle extends StatefulWidget {
  @override
  State<DailyBattle> createState() => _DailyBattle();
}

class _DailyBattle extends State<DailyBattle> {
  String flag = "FindingOpponet";
  int elapsed = 0;

  Widget FindinagOpponent() {
    return Container(
      color: Colors.yellow,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                flag = "Rounds";
              });
              ;
            },
            child: const Text("Finding Opponent")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(flexibleSpace: const Header()),
        body: Container(
          child: Center(
              child: AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
// return FadeScaleTransition(animation: animation, child: child)
              return ClipRect(
                child: SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                ),
              );
            },
            duration: const Duration(milliseconds: 500),
            child: flag == "FindingOpponet"
                ? Container(key: UniqueKey(), child: FindinagOpponent())
                : Container(
                    key: UniqueKey(),
                    child: Rounds(),
                  ),
          )),
        ),
      ),
    );
  }
}
