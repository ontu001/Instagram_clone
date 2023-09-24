import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(2.0),
            color: Colors.amber.shade100,
          );
        });
  }
}
