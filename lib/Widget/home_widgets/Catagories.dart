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
  bool isLocal = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'catagories',
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white, fontSize: 22),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isAll = true;
                isClasic = false;
                isFashion = false;
                isLocal = false;
              });
              
            },
            child: Tab(icon: Text('ALL', style: TextStyle(fontSize: 16, color: isAll? Colors.white: Colors.grey),),),
          )
        ],
      ),
    );
  }
}
