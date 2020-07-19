import 'package:flutter/material.dart';
import 'package:frontend/home_screen/helper.dart';
import 'package:frontend/style.dart';

// --------------------------------
// Start of AppBar
// --------------------------------

Widget searchAppBar(BuildContext context, double appBarHeight) {
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight),
    child: Container(
      decoration: searchAppBarDecoration,
      child: AppBar(
        shape: searchAppBarBottomRadius,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Search',
          style: TextStyle(
              fontFamily: 'TT', fontSize: 17, fontWeight: FontWeight.w500),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
              child: searchBar(context, false)),
        ),
      ),
    ),
  );
}

Widget searchEntry(BuildContext context) {
  return Container(
    height: 75,
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: <Widget>[
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Software Developer, Applications',
              style: searchEntryTitleStyle,
            )),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Research, design, and develop computer and network software or specialized utility programs...',
              style: searchEntryDescStyle,
            )),
        SizedBox(
          height: 2.5,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Computer & Mathematics Occupations',
              style: searchEntryIndustryStyle,
            )),
      ],
    ),
  );
}

Widget seperator(int index) {
  if (index == 0) {
    return Container(
      height: 0,
    );
  } else {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 7.5, 0, 7.5),
      child: Container(
        color: seperatorColor,
        height: 1,
      ),
    );
  }
}
