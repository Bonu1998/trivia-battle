import 'package:flutter/material.dart';
import 'package:my_app/AnimatedButton.dart';
import 'package:my_app/constants.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  Widget logoView(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/${icons['MENU']?['menuLogoBG']}"),
          fit: BoxFit.contain,
        ),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff061745), Color(0xff162e75)],
        ),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100)),
      ),
      child: Image.asset(
        "assets/images/${icons['GLOBAL']?['appLogo']}",
      ),
    );
  }

  Widget menuBottons(context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        // child: LayoutBuilder(
        //     builder: (BuildContext context, BoxConstraints constraints) {
        //   return Container(
        //     width: MediaQuery.of(context).size.width * 0.75,
        //     constraints: const BoxConstraints(maxWidth: 350),
        //     color: Colors.white,
        //   );
        // })
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.75,
                constraints: const BoxConstraints(maxWidth: 350),
                child: AnimatedButton(
                  label: "Daily Battle",
                  tagLine: "Make your state proud",
                  colors: const <Color>[Color(0xffd1664d), Color(0xffc64728)],
                  logo: icons['MENU']?['dailyBattle'],
                  handler: () => Navigator.pushNamed(context, '/poc'),
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.75,
              constraints: const BoxConstraints(maxWidth: 350),
              child: AnimatedButton(
                label: "Trivia Packs",
                tagLine: "Choose your topics",
                colors: const <Color>[Color(0xffeb9f28), Color(0xffd9701a)],
                logo: icons['MENU']?['triviaPacks'],
                handler: () => {Navigator.pushNamed(context, '/editions')},
              ),
            ),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //   Container(
            //     height: MediaQuery.of(context).size.height * 0.07,
            //     width: MediaQuery.of(context).size.width * 0.4,
            //     constraints: const BoxConstraints(maxWidth: 175),
            //     child: AnimatedButton(
            //       label: "State",
            //       tagLine: "Leaderboard",
            //       colors: const <Color>[Color(0xff2ab8bd), Color(0xff2bb9be)],
            //       logo: icons['MENU']?['stateLeaderboard'],
            //       handler: () => print("State Leaderboard"),
            //     ),
            //   ),
            //   Container(
            //     height: MediaQuery.of(context).size.height * 0.07,
            //     width: MediaQuery.of(context).size.width * 0.4,
            //     constraints: const BoxConstraints(maxWidth: 175),
            //     child: AnimatedButton(
            //       label: "Player",
            //       tagLine: "Standings",
            //       colors: const <Color>[Color(0xff2ab8bd), Color(0xff2bb9be)],
            //       logo: icons['MENU']?['playerLeaderboard'],
            //       handler: () => print("Player Standings"),
            //     ),
            //   )
            // ]),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //   Container(
            //     height: MediaQuery.of(context).size.height * 0.07,
            //     width: MediaQuery.of(context).size.width * 0.4,
            //     constraints: const BoxConstraints(maxWidth: 175),
            //     child: AnimatedButton(
            //       label: "How to Play",
            //       tagLine: "",
            //       colors: const <Color>[Color(0xff2ab8bd), Color(0xff2bb9be)],
            //       logo: icons['MENU']?['howToPlay'],
            //       handler: () => print("How to Play"),
            //     ),
            //   ),
            //   Container(
            //     height: MediaQuery.of(context).size.height * 0.07,
            //     width: MediaQuery.of(context).size.width * 0.4,
            //     constraints: const BoxConstraints(maxWidth: 175),
            //     child: AnimatedButton(
            //       label: "Settings",
            //       tagLine: "",
            //       colors: const <Color>[Color(0xffffd900), Color(0xffffb300)],
            //       logo: icons['MENU']?['settings'],
            //       handler: () => print("Settings"),
            //     ),
            //   )
            // ])
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff162e75), Color(0xff061745)],
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [logoView(context), menuBottons(context)]),
    );
  }
}
