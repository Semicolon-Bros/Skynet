import 'package:flutter/material.dart';

Color themeBlue1 = Color(0xff3752F6);
Color themeBlue2 = Color(0xff5D69DA);
Color textDarkGrey = Color(0xff303638);

ThemeData appTheme() {
  return ThemeData(
    primaryColor: themeBlue1,
    accentColor: Colors.orange,
    hintColor: textDarkGrey,
    dividerColor: Colors.green,
    buttonColor: Colors.red,
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
  spreadRadius: 5,
  blurRadius: 25,
  offset: Offset(0, 0), // changes position of shadow
);

// - HOME SCREEN
//   - Search
BoxDecoration searchBarDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.white,
);

BoxDecoration searchButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  gradient: themeGradient,
);

BoxDecoration top60Decoration = BoxDecoration(
  gradient: themeGradient,
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
  // boxShadow: [cardShadow],
);

InputDecoration searchBarTextDecoration = InputDecoration(
  border: InputBorder.none,
  hintText: "Search for your job ....",
  hintStyle: textBoxStyle,
  contentPadding: EdgeInsets.only(left: 10, bottom: 10, top: 5, right: 10),
);

TextStyle textBoxStyle =
    TextStyle(fontSize: 17, fontFamily: 'TT', fontWeight: FontWeight.w500);

TextStyle titleStyle = TextStyle(
  fontFamily: 'TT',
  fontWeight: FontWeight.w400,
  fontSize: 50,
  color: Colors.white,
);

TextStyle titleBoldStyle = TextStyle(
  fontFamily: 'TT',
  fontWeight: FontWeight.w700,
  fontSize: 50,
  color: Colors.white,
);

TextStyle subTitleStyle =
    TextStyle(fontFamily: 'TT', fontSize: 18, color: Colors.white);

TextStyle subTitleBoldStyle = TextStyle(
    fontFamily: 'TT',
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w700);

TextStyle botTitleStyle = TextStyle(
    fontFamily: 'TT',
    fontSize: 24,
    color: textDarkGrey,
    fontWeight: FontWeight.w600);

BoxDecoration industryCardDecoration = BoxDecoration(
  gradient: themeGradient,
  borderRadius: BorderRadius.circular(10.0),
);
