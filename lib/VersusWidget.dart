import 'package:flutter/material.dart';
import 'package:my_app/AvatarComponent.dart';
import 'package:my_app/Constants.dart';

class VersusWidget extends StatelessWidget {
  const VersusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(children: const [
                  AvatarComponent(avatar: "Avatar-3"),
                  Text("PlayerName"),
                  Text("PlayerState")
                ]),
                const Text("0")
              ],
            ),
            Image(image: AssetImage(icons["VERSUS"]?["vs"])),
            Row(
              children: [
                const Text("0"),
                Column(
                  children: const [
                    AvatarComponent(avatar: "Avatar-4"),
                    Text("OpponentName"),
                    Text("OpponentState")
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
