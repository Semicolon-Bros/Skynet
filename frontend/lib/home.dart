import 'package:flutter/material.dart';
import 'card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: CustomCardWidget());
  }
}
