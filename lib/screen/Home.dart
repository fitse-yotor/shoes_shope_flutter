import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes/Widget/home_widgets/Catagories.dart';
import 'package:shoes/Widget/home_widgets/Home_single_product.dart';
import 'package:shoes/Widget/search_bar.dart';
import 'package:shoes/constants/animation/customAnimation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> image = [
    "assets/clasic1.jpg"
    "assets/shoes1.jpg"
    "assets/shoes.jpeg"
    "assets/sport.jpg"
    "assets/sport.jpeg"
    "assets/clasic.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: CustomAnimation(
          home: Column(
            children: [
              Catgories(),
              SearchBar(),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: double.infinity,
                        initialPage: 0,
                        reverse: false,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(microseconds: 600),
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        autoPlay: true,
                        scrollDirection: Axis.horizontal),
                    items: image.map(
                      (e) => HomeSingleProduct(image: e,),
                      ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
