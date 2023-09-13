import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.all(4.0),
            color: Color.fromARGB(255, 236, 202, 214),
          );
        });
  }
}
