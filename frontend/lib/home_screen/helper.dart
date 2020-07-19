import 'package:flutter/material.dart';
import 'package:frontend/style.dart';
import 'package:percent_indicator/percent_indicator.dart';

// --------------------------------
// Start of Top Half
// --------------------------------

Widget searchBar(BuildContext context, bool enabled) {
  return Container(
    height: 50,
    decoration: searchBarDecoration,
    padding: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Expanded(
            flex: 7,
            child: Material(
                child: Container(
                    child: TextField(
              cursorColor: themeBlue1,
              decoration: searchBarTextDecoration,
            )))),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (enabled) {
                Navigator.pushNamed(context, '/search/');
              }
            },
            child: Container(
              height: 40,
              decoration: searchButtonDecoration,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget title() {
  return Expanded(
    flex: 4,
    child: Container(
        alignment: Alignment(0.0, 0.25),
        child: RichText(
          text: new TextSpan(
            children: <TextSpan>[
              TextSpan(text: 'Will ', style: titleStyle),
              TextSpan(text: 'Robots ', style: titleBoldStyle),
              TextSpan(text: 'ever take our jobs?', style: titleStyle),
            ],
          ),
        )),
  );
}

Widget subtitle() {
  return Expanded(
    flex: 2,
    child: Container(
        alignment: Alignment(0.0, -1.0),
        child: RichText(
          text: new TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'If you ever wondered whether ', style: subTitleStyle),
              TextSpan(text: 'your job ', style: subTitleBoldStyle),
              TextSpan(text: 'could be ', style: subTitleStyle),
              TextSpan(text: 'replaced ', style: subTitleBoldStyle),
              TextSpan(text: '/ ', style: subTitleStyle),
              TextSpan(text: 'automated ', style: subTitleBoldStyle),
              TextSpan(text: 'by ', style: subTitleStyle),
              TextSpan(text: 'robots, ', style: subTitleBoldStyle),
              TextSpan(text: 'then ', style: subTitleStyle),
              TextSpan(text: 'search ', style: subTitleBoldStyle),
              TextSpan(
                  text: 'ahead for wonderful insights →', style: subTitleStyle)
            ],
          ),
        )),
  );
}

Widget top60(BuildContext context) {
  return Expanded(
    flex: 5,
    child: Container(
      decoration: top60Decoration,
      padding: EdgeInsets.all(20),
      // color: Colors.black,
      child: Column(
        children: <Widget>[
          title(),
          subtitle(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 10.0),
            child: searchBar(context, true),
          ),
        ],
      ),
    ),
  );
}

// --------------------------------
// End of Top Half
// --------------------------------
// Start of Bot Half
// --------------------------------
Widget botTitle() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Column(
      children: <Widget>[
        Text(
          'Most Searched Industry',
          style: botTitleStyle,
        ),
        SizedBox(
          height: 2,
        ),
        Container(
            width: 100,
            height: 7,
            decoration: BoxDecoration(
                gradient: themeGradient,
                borderRadius: BorderRadius.circular(3.0)))
      ],
    ),
  );
}

Widget progressBar(String title, double completion) {
  return Column(
    children: <Widget>[
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.fromLTRB(7.5, 0, 0, 0),
          child: Text(
            title,
            style: smallTextStyle,
            textAlign: TextAlign.left,
          ),
        ),
      ),
      LinearPercentIndicator(
        width: 140.0,
        lineHeight: 5.0,
        percent: completion,
        backgroundColor: Colors.white38,
        progressColor: Colors.white,
      ),
    ],
  );
}

Widget singleCard(String industryName, String path) {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 0.0, 0.0, 0.0),
    child: Container(
      width: 150,
      decoration: industryCardDecoration,
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(path),
            Text(
              industryName,
              style: mediumTextBoldStyle,
              textAlign: TextAlign.center,
            ),
            progressBar("★ POPULARITY", 0.5),
            progressBar("＄INDUSTRY WORTH", 0.8),
            progressBar("# EMPLOYEES", 0.9)
          ],
        ),
      ),
    ),
  );
}

Widget industryCards() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0),
    height: 220,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        singleCard("Computer & Mathematics", "images/computer_64x64.png"),
        singleCard("Arts, Sports & Entertainment", "images/art_64x64.png"),
        singleCard("Business & Finance", "images/bank_64x64.png"),
      ],
    ),
  );
}

Widget bot40(BuildContext context) {
  return Expanded(
      flex: 4,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            botTitle(),
            SizedBox(
              height: 20,
            ),
            industryCards()
          ],
        ),
      ));
}
// --------------------------------
// End of Bot Half
// --------------------------------
