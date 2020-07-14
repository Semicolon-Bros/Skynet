import 'package:flutter/material.dart';
import 'package:frontend/routes.dart';
import 'package:frontend/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
      // home: LogInPage(),
    );
  }
}
