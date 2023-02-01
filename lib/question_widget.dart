import 'package:flutter/material.dart';
import 'package:my_app/plain_text_button.dart';

import 'custom_timer.dart';

class QuestionWidget extends StatelessWidget {
  QuestionWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.question,
      required this.options});
  double height;
  double width;
  String title;
  String question;
  List<String> options;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: width,
      height: height,
      child: Column(
        children: [
          TextWidget(context, height, width, title),
          SizedBox(height: height * 0.04),
          CustomTimer(height: height * 0.06, width: width * 0.9),
          SizedBox(height: height * 0.08),
          SizedBox(
              width: width * 0.9,
              child: TextWidget(context, height, width, question)),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            color: Colors.red,
            height: height * 0.5,
            width: width * 0.9,
            child: OptionList(context, options),
          )
        ],
      ),
    );
  }

  Widget TextWidget(
      BuildContext context, double height, double width, String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: height * 0.05,
          fontFamily: "Prompt-SemiBold"),
    );
  }

  Widget OptionList(BuildContext context, List<String> options) {
    return ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                child: PlainTextButton(
                  height: height * 0.08,
                  width: width * 1,
                  text: options[index],
                  colors: const [Color(0xff2ab8bd), Color(0xff0b8fa3)],
                ),
              ),
            ],
          );
        });
  }
}
