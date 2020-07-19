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
