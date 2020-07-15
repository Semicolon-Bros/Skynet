import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/home_screen/helper.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        // Color for Android
        statusBarColor: Colors.white,
        // Dark == white status bar -- for IOS.
        statusBarBrightness: Brightness.dark));
    return Scaffold(
      // To avoid keyboard pushing or resizing content upwards
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        children: <Widget>[top60(), bot40()],
      )),
    );
  }
}
