import 'package:flutter/material.dart';
import 'package:shoes/constants/app_constants.dart';

class HomeSingleProduct extends StatefulWidget {
  final image;
  HomeSingleProduct({Key? key, this.image}) : super(key: key);

  @override
  _HomeSingleProductState createState() => _HomeSingleProductState();
}

class _HomeSingleProductState extends State<HomeSingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kAccentColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
