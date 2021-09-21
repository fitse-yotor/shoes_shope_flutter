import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes/constants/app_constants.dart';
import 'package:shoes/screen/Home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHOES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: kPrimaryColor),
      home: HomePage(),
    );
  }
}
