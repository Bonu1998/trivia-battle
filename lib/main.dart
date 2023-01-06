// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_app/AvatarComponent.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/Splash.dart';
import 'package:my_app/VersusWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/splash': (context) => const Splash(),
        '/': (context) => const Home(),
        '/avatar': (context) => const VersusWidget()
      },
      // theme: ThemeData(fontFamily: 'Prompt-SemiBold'),
      debugShowCheckedModeBanner: false,
    );
  }
}
