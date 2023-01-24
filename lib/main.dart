// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_app/AvatarComponent.dart';
import 'package:my_app/Editions.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/Splash.dart';
import 'package:my_app/VersusWidget.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/daily_battle.dart';
import 'package:my_app/register.dart';
import 'package:my_app/timer.dart';

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
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/register': (context) => const Register(),
        '/editions': (context) => Editions(),
        '/poc': (context) => DailyBattle(),
        '/timer': (context) => const CustomTimer()
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
}
