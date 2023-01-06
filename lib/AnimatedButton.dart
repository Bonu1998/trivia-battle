import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton(
      {Key? key,
      required this.label,
      required this.tagLine,
      required this.colors,
      required this.logo})
      : super(key: key);

  final String label;
  final String tagLine;
  final List<Color> colors;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
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
            Container(
              height: 100,
              width: 15,
              child: const Image(
                image: AssetImage("assets/images/circles.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Image(image: AssetImage("assets/images/$logo.png")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
                Text(
                  tagLine,
                  style: const TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ));
  }
}

// class BouncingButton extends StatefulWidget {
//   @override
//   _BouncingButtonState createState() => _BouncingButtonState();
// }

// class _BouncingButtonState extends State<BouncingButton>
//     with SingleTickerProviderStateMixin {
//   late double _scale;
//   late AnimationController _controller;
//   @override
//   void initState() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 10,
//       ),
//       lowerBound: 0.0,
//       upperBound: 0.1,
//     )..addListener(() {
//         setState(() {});
//       });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     _scale = 1 - _controller.value;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Bouncing Button Animation Demo"),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'Press the Below Button',
//             style: TextStyle(color: Colors.grey[400], fontSize: 20.0),
//           ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           Center(
//             child: GestureDetector(
//               onTapDown: _tapDown,
//               onTapUp: _tapUp,
//               child: Transform.scale(
//                 scale: _scale,
//                 child: _animatedButton(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _animatedButton() {
//     return Container(
//       height: 70,
//       width: 200,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100.0),
//           boxShadow: const [
//             BoxShadow(
//               color: Color(0x80000000),
//               blurRadius: 12.0,
//               offset: Offset(0.0, 5.0),
//             ),
//           ],
//           gradient: const LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xff33ccff),
//               Color(0xffff99cc),
//             ],
//           )),
//       child: const Center(
//         child: Text(
//           'Press',
//           style: TextStyle(
//               fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//         ),
//       ),
//     );
//   }

//   void _tapDown(TapDownDetails details) {
//     _controller.forward();
//   }

//   void _tapUp(TapUpDetails details) {
//     _controller.reverse();
//   }
// }