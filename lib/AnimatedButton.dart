import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton(
      {Key? key,
      required this.label,
      required this.tagLine,
      required this.colors,
      required this.logo,
      required this.handler})
      : super(key: key);

  final String label;
  final String tagLine;
  final List<Color> colors;
  final String logo;
  final VoidCallback handler;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handler,
      child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          // padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.05,
                child: Image(
                  image: AssetImage(
                      "assets/images/${icons['BUTTON']?['bubbles']}"),
                  alignment: Alignment.topCenter,
                ),
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.2,
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Image(
                  image: AssetImage("assets/images/$logo"),
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: Theme.of(context).appBarTheme.titleTextStyle,
                    ),
                    Text(
                      tagLine,
                      style: const TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Prompt-SemiBold"),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
