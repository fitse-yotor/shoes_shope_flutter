import 'package:flutter/material.dart';
import 'package:shoes/config/assets/assets.dart';

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
      duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOpen ? 30 : 0),
      ),
      child: Scaffold(
        //bottomNavigationBar: CustomBotNav,
        appBar: AppBar(
          elevation: 0.0,
          leading: isDrawerOpen
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      xfactor = 0.0;
                      yfactro = 0.0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                  icon: Icon(Icons.arrow_back_ios),
                )
              : IconButton(
                  icon: kMenuIcon,
                  onPressed: () {
                    setState(() {
                      xfactor = 230;
                      yfactro = 200;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
          actions: [kNotifecationIcon],
        ),
        body: widget.home,
      ),
    );
  }
}
