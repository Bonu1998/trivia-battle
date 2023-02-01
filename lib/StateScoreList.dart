import 'package:flutter/material.dart';

import 'model/start_score.dart';

class StateScoreList extends StatelessWidget {
  // const Demo({Key? key}) : super(key: key);
  double heightPercent = 0, widthPercent = 0, height =0, width = 0;
  List<StateScore> scores = [];


  StateScoreList(double heightPercent, double widthPercent, List<StateScore> scores){
    this.heightPercent = heightPercent;
    this.widthPercent = widthPercent;
    this.scores = scores;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          width = constraints.maxWidth * widthPercent;
          height = constraints.maxHeight * heightPercent;
          return Container(
            width: this.width,
            height: this.height,
            decoration: BoxDecoration(
                color: Colors.red
            ),
            child: ListView.builder(
                itemCount:scores.length ,
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(height, width, 0.1, 1, index);
                }),
          );
        },
      ),
    );
  }
}



class NumberIcon extends StatelessWidget {
  // const NumberIcon({Key? key}) : super(key: key);
  int index = 0;
  double parentWidth = 0, parentHeight = 0, height = 0, width = 0;
  NumberIcon(double parentHeight, double parentWidth, double percentHeight, double percentWidth, int index) {
    this.index = index;
    this.parentWidth = parentWidth;
    this.parentHeight = parentHeight;
    this.width = this.parentWidth * percentWidth;
    this.height = this.parentHeight* percentHeight;
  }
  @override
  Widget build(BuildContext context) {
    print("parentHeihgt: ${parentHeight}");
    print("pareentWIdth: ${parentWidth}");
    return LayoutBuilder(
          builder: (context, constraints){
            return Center(
                child: Container(
                  width: this.width,
                  height: this.height,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(80)
                  ),
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                          fontSize: constraints.minHeight * 0.5,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
            );
          },
        );

  }
}

class ListItem extends StatelessWidget {
  // const ListItem({Key? key}) : super(key: key);
  double parentHeight = 0, parentWidth = 0, height = 0, width = 0;
  int index = 0;
  ListItem(double parentHeight, double parentWidth, double heightPercent, double widthPercent, int index) {
    this.parentWidth = parentWidth;
    this.parentHeight = parentHeight;
    this.index = index;
    this.height = parentHeight * heightPercent;
    this.width = parentWidth * widthPercent;
  }
  @override
  Widget build(BuildContext context) {
    print("parentWidth: ${parentWidth}");
    print("parentHeight: ${parentHeight}");
    return Container(
      height: this.height,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: NumberIcon(height, width, 0.4, 0.12, index)
          ),
          Expanded(
              flex: 3,
              child: ScoreTableText("California", 20, Colors.white)
          ),
          Expanded(
              flex: 2,
              child: ScoreTableText("387878", 20, Colors.red)
          )
        ],
      ),
    );
  }
}

class ScoreTableText extends StatelessWidget {
  double fontSize = 0;
  String text = "";
  Color textColor = Colors.white;
  // const ScoreTableText({Key? key}) : super(key: key);
  ScoreTableText(String text, double fontSize, Color textColor) {
    this.fontSize = fontSize;
    this.text = text;
    this.textColor = textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: this.fontSize,
        color: textColor
      ),
    );
  }
}


// class ListItem extends StatelessWidget{
//   double parentHeight = 0, parentWidth = 0;
//   // ListItem({Key? key}) : super(key: key);
//   ListItem(double parentHeight, double parentWidth) {
//     this.parentWidth = parentWidth;
//     this.parentHeight = parentHeight;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//
//       ),
//     );
//   }
// }


// Container(
// width: parentWidth * 0.2,
// height: parentHeight * 0.1  ,
// decoration: BoxDecoration(
// color: Colors.yellow
// ),
// child: Text("hello"),
// )




