
import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  CustomTextButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.colors,
      required this.fontColor
      });

  double height;
  double width;
  String text;
  List<Color> colors;
  Color fontColor;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
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
                  color: widget.fontColor,
                  fontSize: widget.height * 0.5, //make this responsive
                  fontFamily: "Prompt-SemiBold"),
            ),
          ),
        ),
      ),
    );
  }
}
