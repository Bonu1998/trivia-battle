import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: const Header(),
      ),
      body: Menu(),
      bottomNavigationBar: footer(context),
    ));
  }
}
