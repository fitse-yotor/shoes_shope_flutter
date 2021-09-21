import 'package:flutter/material.dart';
import 'package:shoes/constants/animation/customAnimation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: CustomAnimation(
          home: Column(
            children: [Text('kdfkjnj')],
          ),
        ));
  }
}
