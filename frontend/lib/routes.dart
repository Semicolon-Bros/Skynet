import 'package:flutter/material.dart';
import 'package:frontend/home_screen/homeScreen.dart';
import 'package:frontend/search_screen/searchScreen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => HomeScreenPage(),
  "/search/": (BuildContext context) => SearchScreenPage(),
};
