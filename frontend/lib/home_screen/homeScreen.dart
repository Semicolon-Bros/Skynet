import 'package:flutter/material.dart';
import 'package:frontend/home_screen/helper.dart';
import 'package:frontend/style.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(gradient: themeGradient),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              searchBar()
            ],
          )),
    );
  }
}
