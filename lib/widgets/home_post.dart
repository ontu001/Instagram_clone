import 'package:flutter/material.dart';

class HomePost extends StatelessWidget {
//for make the text filed as requared
  final name;

  HomePost({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
//Profile photo and name
        Padding(
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
                    backgroundColor: Colors.grey,
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
        ),

        //post
        Container(
          height: 400,
          color: Colors.grey,
        ),

        //Icons for post reaction, comment , sshare and save
        Padding(
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
        ),

        //Liked by
        Padding(
          padding: EdgeInsets.only(top: 2, left: 12, bottom: 8.0),
          child: RichText(
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
        ),

        //caption
        Padding(
          padding: EdgeInsets.only(top: 2, left: 12, bottom: 8.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      ' Meghalaya is just the place for nature lovers and adventure enthusiasts. The place is also known for its caves.'),
            ]),
          ),
        ),

        //comments
      ],
    );
  }
}
