import 'package:flutter/rendering.dart';

class StateScore{
  late int score;
  late String state;
  StateScore(String state, int score) {
    this.state = state;
    this.score = score;
  }

  StateScore.fromJson(Map<String, dynamic> json) : state = json['state'], score = json['score'];
}