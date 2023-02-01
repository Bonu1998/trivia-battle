import 'dart:async';

import 'package:flutter/material.dart';

class CustomTimer extends StatefulWidget {
  CustomTimer({super.key, required this.height, required this.width});
  double height;
  double width;

  @override
  State<CustomTimer> createState() => _CustomTimer();
}

class _CustomTimer extends State<CustomTimer> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 30);
  // double width = widget.width * 1;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    setState(() {
      final seconds = myDuration.inSeconds - 1;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    int counter = myDuration.inSeconds.remainder(60);
    final seconds = strDigits(counter);
    double fraction = 30 / 100;
    double width = widget.width *
        myDuration.inSeconds.remainder(60) *
        fraction /
        10;
    double frame = 30 / 3;
    Color color = counter > 2 * frame
        ? const Color(0xff17ec7d)
        : counter > frame
            ? const Color(0xfffab020)
            : const Color(0xffc0392b);
    return SafeArea(
        child: Container(
      // color: Colors.white,
      child: Center(
        child: Container(
          alignment: Alignment.centerRight,
          height: widget.height,
          // height: widget.height * 0.05,
          width: widget.width * 0.9,
          decoration: const BoxDecoration(
            color: Color(0xff061745),
            // color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(500)),
          ),
          child: Stack(alignment: Alignment.centerLeft, children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: width,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(500)),
              ),
            ),
            Positioned(
                width: 80,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Text(
                      "${seconds.toString()}s",
                      style: const TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ))
          ]),
        ),
      ),
    ));
  }
}
