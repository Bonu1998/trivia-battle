import 'package:flutter/material.dart';

import 'leaderboard.dart';

class StateScoreList extends StatelessWidget {
  double heightPercent = 0, widthPercent = 0, height = 0, width = 0;
  List<LeaderboardListItem> scores = [];

  StateScoreList(
      double height, double width, List<LeaderboardListItem> scores) {
    this.width = width;
    this.height = height;
    this.scores = scores;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(color: Colors.red),
        constraints: const BoxConstraints(maxWidth: 500),
        child: ListView.builder(
            itemCount: scores.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem(height * 0.1, width, scores[index], index);
            }),
      ),
    );
  }
}

class NumberIcon extends StatelessWidget {
  int index = 0;
  double parentWidth = 0, parentHeight = 0, height = 0, width = 0;
  NumberIcon(double height, double width, int index) {
    this.index = index;
    this.width = width;
    this.height = height;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      constraints: const BoxConstraints(maxWidth: 10),
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(80)),
      child: Center(
        child: Text(
          // "1",
          "${index + 1}",
          style: TextStyle(fontSize: height * 0.5, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  double parentHeight = 0, parentWidth = 0, height = 0, width = 0;
  late LeaderboardListItem leaderboardItem;
  int index = 0;
  ListItem(double height, double width, LeaderboardListItem leaderboardItem,
      int index) {
    this.index = index;
    this.height = height;
    this.width = width;
    this.leaderboardItem = leaderboardItem;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          Expanded(
              flex: 1, child: NumberIcon(height * 0.4, width * 0.05, index)),
          SizedBox(
            width: height * 0.1,
          ),
          Expanded(
              flex: 3, child: ScoreTableText(leaderboardItem.userName, 20, Colors.white)),
          Expanded(flex: 2, child: ScoreTableText(leaderboardItem.userScore, 20, Colors.red))
        ],
      ),
    );
  }
}

class ScoreTableText extends StatelessWidget {
  double fontSize = 0;
  String text = "";
  Color textColor = Colors.white;
  ScoreTableText(String text, double fontSize, Color textColor) {
    this.fontSize = fontSize;
    this.text = text;
    this.textColor = textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: textColor),
    );
  }
}
