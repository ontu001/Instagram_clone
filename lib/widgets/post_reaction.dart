import 'package:flutter/material.dart';

class postReact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.chat_sharp)),
              Icon(Icons.share),
            ],
          ),
          Icon(Icons.bookmark)
        ],
      ),
    );
  }
}
