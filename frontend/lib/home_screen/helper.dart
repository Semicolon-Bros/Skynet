import 'package:flutter/material.dart';
import 'package:frontend/style.dart';

// --------------------------------
// Start of Top Half
// --------------------------------

Widget searchBar() {
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
          child: Container(
            height: 40,
            decoration: searchButtonDecoration,
            child: Icon(
              Icons.search,
              color: Colors.white,
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

Widget top60() {
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
            child: searchBar(),
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

// --------------------------------
// End of Bot Half
// --------------------------------
