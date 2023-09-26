import 'package:flutter/material.dart';

class postHead extends StatelessWidget {
  final name;
  postHead({required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 15, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //photo and name
          Row(
            children: [
              //photo
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),

              //spacing
              SizedBox(
                width: 10,
              ),

              //name
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //icon
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}