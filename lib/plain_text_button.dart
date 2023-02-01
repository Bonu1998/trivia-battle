import 'dart:ffi';

import 'package:flutter/material.dart';

class PlainTextButton extends StatefulWidget {
  PlainTextButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.colors});

  double height;
  double width;
  String text;
  List<Color> colors;

  @override
  State<PlainTextButton> createState() => _PlainTextButtonState();
}

class _PlainTextButtonState extends State<PlainTextButton> {
  // double parentHeight = MediaQuery.of(context).size.height;
  // double parentWidth = 0;
  late List<Color> colors;
  @override
  void initState() {
    super.initState();
    colors = widget.colors;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.height * 0.5, //make this responsive
                  fontFamily: "Prompt-SemiBold"),
            ),
          ),
        ),
      ),
    );
  }
}
