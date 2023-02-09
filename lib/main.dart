// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_app/AvatarComponent.dart';
import 'package:my_app/StateScoreList.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/editions.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/Splash.dart';
import 'package:my_app/VersusWidget.dart';
import 'package:my_app/menu.dart';
import 'package:my_app/register.dart';
import 'package:my_app/timer.dart';

import 'daily_battle.dart';
import 'model/start_score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget footer(context) {
    return Container(
      color: const Color(0xff061745),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        "assets/images/${icons['GLOBAL']?['footer']}",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<StateScore> scores = GetStateScore();
    return MaterialApp(
      initialRoute: '/register',
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/register': (context) => const Register(),
        '/editions': (context) => Editions(),
        '/listItems': (context) => Center(child: StateScoreList(MediaQuery.of(context).size.height * 0.9, MediaQuery.of(context).size.width, scores)),
        '/daily': (context) => DailyBattle(),
        '/test': (context) => Center(
          child: NumberIcon(MediaQuery.of(context).size.height * 0.3, MediaQuery.of(context).size.width * 0.3, 1),
        )
        // '/menu': (context) => const Menu()
        // '/listItems': (context) => LayoutBuilder(
        //     builder: (context, constraints) {
        //       return NumberIcon(constraints.maxWidth, constraints.maxHeight);
        //     }
        // )
      },
      // home: SafeArea(
      //     child: Scaffold(
      //   appBar: AppBar(
      //     flexibleSpace: const Header(),
      //   ),
      //   body: const Register(),
      // )),
      theme: ThemeData(
        fontFamily: "Prompt",
        appBarTheme: AppBarTheme(
          titleTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                  headline6: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Prompt-SemiBold",
                      fontSize: 20.0))
              .headline6,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  List<StateScore> GetStateScore() {
    var scores = [
      {
        "state": "California",
        "score": 90
      },
      {
        "state": "Ohio",
        "score": 120
      },
      {
        "state": "NY",
        "score": 230
      },
      {
        "state": "Texas",
        "score": 1230
      },
      {
        "state": "Pensyl",
        "score": 1230
      },
    ];
    List<StateScore> stateScores = [];
    for(int i = 0; i < scores.length; i ++) {
      stateScores.add(StateScore.fromJson(scores[i]));
    }
    print("StateScores: ${stateScores}");
    return stateScores;
  }
}
