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
