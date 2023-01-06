import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xff061745), Color(0xff162e75)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/splash-top-graphics.png'),
            Row(
              children: [
                Expanded(
                    child:
                        Image.asset('assets/images/splash-left-graphics.png')),
                Expanded(flex: 5, child: Image.asset('assets/images/logo.png')),
                Expanded(
                    child:
                        Image.asset('assets/images/splash-right-graphics.png')),
              ],
            ),
            Image.asset('assets/images/splash-bottom-graphics.png'),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('TextButton'),
            )
          ],
        ),
      ),
    ));
  }
}
