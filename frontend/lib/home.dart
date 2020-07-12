import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            height: 300,
            width: MediaQuery.of(context).size.width / 2.5,
            child: Card(
              color: Hexcolor("#4359ED"),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: Container(
                          child: Image.asset(
                            'images/computer_200x200.png',
                            height: 80,
                            width: 80,
                          ),
                        )),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            "Computer & Mathematics",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //Parent column for bottom part of card
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //Progress Bar Containers
                        Container(
                          child: Column(
                            //Single progress text + progress bar
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        color: Colors.white, size: 14.0),
                                    Text(
                                      "POPULARITY",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                )),
                              ),
                              LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 12.0,
                                  percent: 0.8,
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.grey)
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(Icons.person,
                                        color: Colors.white, size: 14.0),
                                    Text(
                                      "EMPLOYEES",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                )),
                              ),
                              LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 12.0,
                                  percent: 0.8,
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.grey)
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(Icons.attach_money,
                                        color: Colors.white, size: 14.0),
                                    Text(
                                      "INDUSTRY WORTH",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                )),
                              ),
                              LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 12.0,
                                  percent: 0.8,
                                  progressColor: Colors.white,
                                  backgroundColor: Colors.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
