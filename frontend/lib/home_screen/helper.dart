import 'package:flutter/material.dart';
import 'package:frontend/style.dart';

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
