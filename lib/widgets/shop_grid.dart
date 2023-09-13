import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  List<Widget> item = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(2.0),
            color: Colors.blueGrey,
          );
        });
  }
}
