import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/widgets/button.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(children: [
          Icon(Icons.lock),
          SizedBox(
            width: 5,
          ),
          Text("rohan_rahman"),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_downward_sharp,
            size: 15,
          )
        ]),
        actions: [
          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.add_box)),
          Icon(Icons.menu),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // heading section=============================
          Padding(
            padding: EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile photo
                CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.grey.shade400,
                ),

                //post follwers following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //post
                      Column(
                        children: [
                          Text(
                            '237',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Post')
                        ],
                      ),

                      //followers
                      Column(
                        children: [
                          Text(
                            '180',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Followers')
                        ],
                      ),

                      //following
                      Column(
                        children: [
                          Text(
                            '56',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Following')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //profile and bio
          Padding(
            padding: EdgeInsets.only(left: 17, top: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rohanur Rahman',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text('Mobile Softwere Engineer || Flutter Exper'),
                ),
                Text(
                  'https//:github.io/ontu001',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),

          //edit and share button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Cbutton('Edit profile', () {}),
                SizedBox(
                  width: 10,
                ),
                Cbutton('Edit profile', () {}),
              ],
            ),
          ),


























          
        ]),
      ),
    );
  }
}
