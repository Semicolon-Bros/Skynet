import 'package:flutter/material.dart';

Color themeBlue1 = Color(0xff3752F6);
Color themeBlue2 = Color(0xff5D69DA);
Color textDarkGrey = Color(0xff303638);

ThemeData appTheme() {
  return ThemeData(
    primaryColor: themeBlue1,
    accentColor: Colors.orange,
    hintColor: textDarkGrey,
    dividerColor: Colors.white,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: Colors.white,
  );
}

LinearGradient themeGradient = LinearGradient(
    colors: [themeBlue1, themeBlue2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

BoxShadow cardShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.25),
  spreadRadius: 10,
  blurRadius: 50,
  offset: Offset(0, 0), // changes position of shadow
);

// - HOME SCREEN
//   - Search
BoxDecoration searchBarDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
);

BoxDecoration searchButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  gradient: themeGradient,
);

InputDecoration searchBarTextDecoration = InputDecoration(
  border: InputBorder.none,
  hintText: "Search for your job ....",
  hintStyle: textBoxStyle,
  contentPadding: EdgeInsets.only(left: 10, bottom: 10, top: 5, right: 10),
);

TextStyle textBoxStyle =
    TextStyle(fontSize: 17, fontFamily: 'TT', fontWeight: FontWeight.w500);
