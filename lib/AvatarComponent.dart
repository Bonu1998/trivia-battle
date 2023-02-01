import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({super.key, required this.avatar});

  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/${icons['AVATAR']?['playerBG']}"),
            fit: BoxFit.contain),
      ),
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 20),
          child: Image(image: AssetImage("assets/images/avatars/$avatar.png"))),
    );
  }
}
