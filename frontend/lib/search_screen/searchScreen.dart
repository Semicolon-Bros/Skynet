import 'package:flutter/material.dart';
import 'package:frontend/search_screen/helper.dart';

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
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
