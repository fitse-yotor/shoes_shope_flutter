import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  final Widget home;
  const CustomAnimation({Key? key, required this.home}) : super(key: key);

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> {
  double xfactor = 0.0;
  double yfactro = 0.0;

  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xfactor, yfactro, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(microseconds: 2000),
    );
  }
}
