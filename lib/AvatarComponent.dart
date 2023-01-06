import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({super.key, required this.avatar});

  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/player-avatar-bg.png"),
            fit: BoxFit.cover),
      ),
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 20),
          // child: Image(image: AssetImage("assets/images/avatars/$avatar.png")),
          child: Image(image: AssetImage("assets/images/avatars/$avatar.png"))),
    );
  }
}
