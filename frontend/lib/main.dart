import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/routes.dart';
import 'package:frontend/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        // Color for Android
        statusBarColor: Colors.white,
        // Dark == white status bar -- for IOS.
        statusBarBrightness: Brightness.dark));
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
