import 'package:flutter/material.dart';

Widget hLight() {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 2),
        color: Colors.grey,
        image: DecorationImage(
            image: NetworkImage(
              'https://images.blacktomato.com/2012/06/Ladakh.jpg?auto=compress%2Cformat&fit=crop&h=424&ixlib=php-3.3.1&w=722&s=56fff52c840a7c858f5e772335c9022b',
            ),
            fit: BoxFit.cover),
      ),
    ),
  );
}
