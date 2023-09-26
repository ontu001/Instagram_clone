import 'package:flutter/material.dart';

class HomeStores extends StatelessWidget {
  final text;
  HomeStores({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(
                  image: NetworkImage(
                    'https://www.themodelbuilders.co.uk/wp-content/uploads/2022/02/shutterstock_1562414428.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(text),
        ],
      ),
    );
  }
}
