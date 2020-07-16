import 'package:flutter/material.dart';
import 'package:frontend/home_screen/helper.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // To avoid keyboard pushing or resizing content upwards
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        children: <Widget>[top60(context), bot40(context)],
      )),
    );
  }
}
