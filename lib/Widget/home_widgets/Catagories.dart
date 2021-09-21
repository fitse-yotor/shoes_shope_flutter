import 'package:flutter/material.dart';

class Catgories extends StatefulWidget {
  Catgories({Key? key}) : super(key: key);

  @override
  _CatgoriesState createState() => _CatgoriesState();
}

class _CatgoriesState extends State<Catgories> {
  bool isAll = true;
  bool isFashion = false;
  bool isClasic = false;
  bool isSport = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('catagories',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
          )),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isAll = true;
                isClasic = false;
                isFashion = false;
                isSport = false;
              });
            },
            child: Tab(
              icon: Text(
                'ALL',
                style: TextStyle(
                    fontSize: 16, color: isAll ? Colors.white : Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isAll = false;
                isClasic = true;
                isFashion = false;
                isSport = false;
              });
            },
            child: Tab(
              icon: Text(
                'Classic',
                style: TextStyle(
                    fontSize: 16, color: isClasic ? Colors.white : Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isAll = false;
                isClasic = false;
                isFashion = true;
                isSport = false;
              });
            },
            child: Tab(
              icon: Text(
                'Fashion',
                style: TextStyle(
                    fontSize: 16,
                    color: isFashion ? Colors.white : Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isAll = false;
                isClasic = false;
                isFashion = false;
                isSport = true;
              });
            },
            child: Tab(
              icon: Text(
                'Sport',
                style: TextStyle(
                    fontSize: 16, color: isSport ? Colors.white : Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
