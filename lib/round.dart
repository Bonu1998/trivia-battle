import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/VersusWidget.dart';

class Rounds extends StatefulWidget {
  @override
  State<Rounds> createState() => _Rounds();
}

class _Rounds extends State<Rounds> {
  String screen = "Question";
  Widget Versus() {
    return Container(
      color: Colors.blueGrey,
      height: MediaQuery.of(context).size.height * 0.3,
      child: const VersusWidget(),
    );
  }

  Widget Question() {
    return Container(
      color: Colors.red,
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  screen = "Answer";
                });
              },
              child: const Text("Question"))),
    );
  }

  Widget Answer() {
    return Container(
      color: Colors.yellow,
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  screen = "Result";
                });
              },
              child: const Text("Answer"))),
    );
  }

  Widget Result() {
    return Container(
      color: Colors.green,
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  screen = "Question";
                });
                Navigator.pop(context);
              },
              child: const Text("Result"))),
    );
  }

  Widget RoundScreen() {
    return Column(
      children: [
        Versus(),
        Expanded(
          child: AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return ClipRect(
                child: SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                ),
              );
            },
            duration: const Duration(milliseconds: 1000),
            child: screen == "Question"
                ? Question()
                : screen == "Answer"
                    ? Answer()
                    : Result(),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RoundScreen(),
    );
  }
}
