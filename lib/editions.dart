import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/Header.dart';
import 'package:my_app/model/editions.dart';

class Editions extends StatelessWidget {
  Editions({super.key});

  List<Map<String, String>> editionsList = [
    {
      "label": "Geography",
      "icon": "trivia-pack-geography.png",
      "level": "trivia-pack-geography-level.png",
      "levelBg": "trivia-pack-geography-stripe.png"
    },
    {
      "label": "Movies",
      "icon": "trivia-pack-movies.png",
      "level": "trivia-pack-movies-level.png",
      "levelBg": "trivia-pack-movies-stripe.png"
    },
    {
      "label": "Animals",
      "icon": "trivia-pack-animals.png",
      "level": "trivia-pack-animals-level.png",
      "levelBg": "trivia-pack-animals-stripe.png"
    },
    {
      "label": "Science",
      "icon": "trivia-pack-science.png",
      "level": "trivia-pack-science-level.png",
      "levelBg": "trivia-pack-science-stripe.png"
    },
    {
      "label": "History",
      "icon": "trivia-pack-history.png",
      "level": "trivia-pack-history-level.png",
      "levelBg": "trivia-pack-history-stripe.png"
    },
    {
      "label": "Sports",
      "icon": "trivia-pack-sports.png",
      "level": "trivia-pack-sports-level.png",
      "levelBg": "trivia-pack-sports-stripe.png"
    }
  ];
  Widget Card(context, backgroundImage, labelBackground, label) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$backgroundImage"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.02,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/$labelBackground"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(label,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "Prompt-SemiBold")),
              ),
            )),
      ],
    );
  }

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

  // Widget editionsList(context) {
  //   return const SizedBox(
  //     child: Text("daskdhaks"),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: const Header(),
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
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xff061745), Color(0xff162e75)],
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75)),
            ),
            alignment: Alignment.center,
            child: const Text("Trivia Packs",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Prompt-SemiBold")),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              "Trivia Packs Descriptionda sdasdasdasdas adnakshd askdjha kdkashfdsa sdhkfhsdkfhsl kafhlksad sdkfhlaksd hflksahlf ksld fklash lksflksdhfkehwiafoajls",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Prompt-SemiBold"),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                width: MediaQuery.of(context).size.width * 0.9,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: editionsList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Card(
                          context,
                          editionsList[index]['icon'],
                          editionsList[index]['levelBg'],
                          editionsList[index]['label']);
                    })),
          ),
        ]),
      ),
      bottomNavigationBar: footer(context),
    ));
  }
}
