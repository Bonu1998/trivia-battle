import 'package:flutter/material.dart';
import 'package:my_app/AnimatedButton.dart';
import 'package:my_app/AvatarComponent.dart';
import 'package:my_app/constants.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  Widget header(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: const Color(0xff162e75),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Let's be Personal",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        Image.asset(
          "assets/images/${icons['REGISTER']?['titleUnderline']}",
        )
      ]),
    );
  }

  Widget footer(context) {
    return Container(
        color: const Color(0xff030b2e),
        height: MediaQuery.of(context).size.height * 0.063,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/images/${icons['GLOBAL']?['footer']}",
        ));
  }

  Widget imputName(context) {
    return Column(
      children: [
        Text("What should we call you?",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        Container(
          height: (MediaQuery.of(context).size.height) * 0.07,
          width: (MediaQuery.of(context).size.width) * 0.8,
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff5E80E1),
                    spreadRadius: 0.5,
                    offset: Offset(0, 1))
              ],
              color: Color(0xff061745)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              "assets/images/${icons['REGISTER']?['inputName']}",
            ),
            const Text(
              "Type your name here",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontFamily: "Prompt-SemiBold"),
            )
          ]),
        )
      ],
    );
  }

  Widget selectState(context) {
    return Column(
      children: [
        Text("Which state you belong to?",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        Container(
          height: (MediaQuery.of(context).size.height) * 0.07,
          width: (MediaQuery.of(context).size.width) * 0.8,
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff5E80E1),
                    spreadRadius: 0.5,
                    offset: Offset(0, 1))
              ],
              color: Color(0xff061745)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              "assets/images/${icons['REGISTER']?['selectState']}",
            ),
            const Text(
              "Select your state",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontFamily: "Prompt-SemiBold"),
            )
          ]),
        )
      ],
    );
  }

  Widget selectAvatar(context) {
    return Column(
      children: [
        Text("Select your look",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        Container(
          height: (MediaQuery.of(context).size.height) * 0.1,
          width: (MediaQuery.of(context).size.width) * 0.8,
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff5E80E1),
                    spreadRadius: 0.5,
                    offset: Offset(0, 1))
              ],
              color: Color(0xff061745)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const AvatarComponent(avatar: "Avatar-1"),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.5,
                child: AnimatedButton(
                  label: "Change",
                  tagLine: "",
                  colors: const <Color>[Color(0xff2ab8bd), Color(0xff0b8fa3)],
                  logo: icons['REGISTER']?['selectAvatar'],
                  handler: () => print("Change"),
                ))
          ]),
        )
      ],
    );
  }

  Widget login(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage("assets/images/${icons['REGISTER']?['footer']}"),
              fit: BoxFit.contain)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.65,
        child: AnimatedButton(
          label: "That's it!",
          tagLine: "",
          colors: const <Color>[Color(0xffd1664d), Color(0xffce5e44)],
          logo: icons['REGISTER']?['submit'],
          handler: () => Navigator.pushNamed(context, '/home'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: header(context),
      ),
      body: Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("dadasdasdasdasdasdasd",
                  style: Theme.of(context).appBarTheme.titleTextStyle),
              imputName(context),
              selectState(context),
              selectAvatar(context),
              login(context),
              // Image.asset(
              //   "assets/images/${icons['REGISTER']?['footer']}",
              // )
            ]),
      ),
      bottomNavigationBar: footer(context),
    ));
  }
}
