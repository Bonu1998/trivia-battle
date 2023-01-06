import 'package:flutter/material.dart';
import 'package:my_app/AnimatedButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xff061745), Color(0xff162e75)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.8,
                child: const AnimatedButton(
                  label: "Daily Battle",
                  tagLine: "Make your state proud",
                  colors: <Color>[Color(0xffd1664d), Color(0xffc64728)],
                  logo: "daily-battle",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              child: const AnimatedButton(
                label: "Trivia Packs",
                tagLine: "Choose your topics",
                colors: <Color>[Color(0xffeb9f28), Color(0xffd9701a)],
                logo: "trivia-packs",
              ),
            ),
            Row(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const AnimatedButton(
                  label: "State",
                  tagLine: "Leaderboard",
                  colors: <Color>[Color(0xff2ab8bd), Color(0xff2bb9be)],
                  logo: "leaderboard-state",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const AnimatedButton(
                  label: "Player",
                  tagLine: "Standings",
                  colors: <Color>[Color(0xffd1664d), Color(0xffc64728)],
                  logo: "leaderboard-player",
                ),
              )
            ]),
            Row(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const AnimatedButton(
                  label: "How to Play",
                  tagLine: "",
                  colors: <Color>[Color(0xff2ab8bd), Color(0xff2bb9be)],
                  logo: "how-to-play",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: const AnimatedButton(
                  label: "Settings",
                  tagLine: "",
                  colors: <Color>[Color(0xffffd900), Color(0xffffb300)],
                  logo: "settings",
                ),
              )
            ])
          ],
        ),
      ),
    ));
  }
}
