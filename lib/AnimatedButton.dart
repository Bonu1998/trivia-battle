import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton(
      {Key? key,
      required this.label,
      required this.tagLine,
      required this.colors,
      required this.logo,
      required this.handler,
      required this.height,
      required this.width})
      : super(key: key);

  final String label;
  final String tagLine;
  final List<Color> colors;
  final String logo;
  final VoidCallback handler;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    double _height = height;
    double _width = width;

    return InkWell(
      onTap: handler,
      child: Container(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 5,
                left: 5,
                child: Image(
                  image: AssetImage(
                      "assets/images/${icons['BUTTON']?['bubbles']}"),
                )
              ),
            Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.symmetric(
              //   horizontal: _width * 0.1,
              // ),
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: _width * 0.2,
                    child: Image(
                      image: AssetImage("assets/images/$logo"),
                      // width: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                  SizedBox(width: _width * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: _height * 0.3,
                            fontFamily: "Prompt-SemiBold"),
                      ),
                      Text(
                        tagLine,
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: _height * 0.18,
                            fontFamily: "Prompt-SemiBold"),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// child: Row(
//             children: <Widget>[
//               SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width * 0.05,
//                 child: Image(
//                   image: AssetImage(
//                       "assets/images/${icons['BUTTON']?['bubbles']}"),
//                   alignment: Alignment.topCenter,
//                 ),
//               ),
//               Container(
//                 // width: MediaQuery.of(context).size.width * 0.0,
//                 padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
//                 child: Image(
//                   image: AssetImage("assets/images/$logo"),
//                   width: MediaQuery.of(context).size.width * 0.1,
//                 ),
//               ),
//               SizedBox(
//                 // width: MediaQuery.of(context).size.width * 0.4,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       label,
//                       style: Theme.of(context).appBarTheme.titleTextStyle,
//                     ),
//                     Text(
//                       tagLine,
//                       style: const TextStyle(
//                           color: Colors.yellow,
//                           fontWeight: FontWeight.w300,
//                           fontFamily: "Prompt-SemiBold"),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           )