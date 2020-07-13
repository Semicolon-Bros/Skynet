import 'package:flutter/material.dart';
import 'card.dart';
import 'search_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[CustomCardWidget(), CustomSearchBarWidget()],
          ),
        ));
  }
}
