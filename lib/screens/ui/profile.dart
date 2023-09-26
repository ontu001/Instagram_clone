import 'package:flutter/material.dart';
import 'package:instagram_clone/tabbar/tab1.dart';
import 'package:instagram_clone/tabbar/tab2.dart';
import 'package:instagram_clone/tabbar/tab3.dart';
import 'package:instagram_clone/widgets/button.dart';
import 'package:instagram_clone/widgets/highlights.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // heading section=============================
          Padding(
            padding: EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile photo
                CircleAvatar(
                  radius: 46,
                  backgroundImage: NetworkImage(
                      'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
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

          //additional text
          Padding(
            padding: EdgeInsets.only(
              left: 17,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Story highlights',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Keep your favourite stories on your profile')),
              ],
            ),
          ),

          //highlights
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 12, top: 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/001/500/603/small/add-icon-free-vector.jpg'),
                ),
                SizedBox(
                  width: 5,
                ),
                hLight(),
                hLight(),
                hLight(),
                hLight(),
                hLight(),
                hLight(),
                hLight(),
                hLight(),
              ],
            ),
          ),

          //tab bar
          TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_3x3),
            ),
            Tab(
              icon: Icon(Icons.video_call_outlined),
            ),
            Tab(
              icon: Icon(Icons.person_2_outlined),
            )
          ]),

          //tab bar view
          Expanded(
            child: TabBarView(
              children: [Tab1(), Tab2(), Tab3()],
            ),
          )
        ]),
      ),
    );
  }
}
