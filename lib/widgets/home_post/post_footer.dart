import 'package:flutter/material.dart';

class postFooter extends StatelessWidget {
  final name;
  postFooter({required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2, left: 12, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
//Liked by
          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Liked by  '),
              TextSpan(
                  text: 'baki_billah  ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'and  '),
              TextSpan(
                  text: '62 others',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
          ),
          SizedBox(height: 5,),

//caption
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      ' Meghalaya is just the place for nature lovers and adventure enthusiasts. The place is also known for its caves.'),
            ]),
          ),
        ],
      ),
    );
  }
}
