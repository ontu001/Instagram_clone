import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/widgets/search_box.dart';
import 'package:instagram_clone/widgets/shop_grid.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Shop',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.calendar_today),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.menu)
        ],
      ),
      body: Column(children: [
        //Searchbox
        Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
            child: SearchBox()),

        //grids
        Expanded(child: ShopGrid())
      ]),
    );
  }
}
