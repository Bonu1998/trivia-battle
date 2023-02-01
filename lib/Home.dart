import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Widget currentPage;
  late Menu menuPage;

  @override
  void initState() {
    super.initState();
    menuPage = Menu(this.callback);

    currentPage = menuPage;
  }

  void callback(Widget nextPage) {
    setState(() {
      this.currentPage = nextPage;
    });
  }

  Widget footer(context) {
    return Container(
      color: const Color(0xff061745),
      height: MediaQuery.of(context).size.height * 0.07,
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
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xfffacb04), Color(0xfff0b100)],
              )),
          child: Image(
            image:
                AssetImage("assets/images/${icons['HEADER']?['headerMenu']}"),
          ),
        ),
        flexibleSpace: const Header(),
      ),
      body: currentPage,
      bottomNavigationBar: footer(context),
    ));
  }
}
