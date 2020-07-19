import 'package:flutter/material.dart';
import 'package:frontend/search_screen/helper.dart';
import 'package:frontend/style.dart';

class SearchScreenPage extends StatefulWidget {
  @override
  _SearchScreenPageState createState() => _SearchScreenPageState();
}

class _SearchScreenPageState extends State<SearchScreenPage> {
  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).size.height * 0.20;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: searchAppBar(context, appBarHeight),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // child: Column(children: <Widget>[searchEntry(context), seperator()]),
        child: ListView.separated(
            itemBuilder: (context, index) => seperator(index),
            separatorBuilder: (context, index) => searchEntry(context),
            itemCount: 20),
      ),
    );
  }
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
