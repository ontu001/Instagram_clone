import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/widgets/home_post.dart';
import 'package:instagram_clone/widgets/home_stories.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//List of people for story
  List<String> people = [
    'Baki',
    'Shamim',
    'Abir',
    'Labib',
    'Soccho',
    'Momin',
    'Tushar',
    'Sojib'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Instagram"),
        actions: [
          Icon(Icons.add),
          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.favorite)),
          Icon(Icons.share),
        ],
      ),

      //body===================
      body: Column(children: [
        //Stories
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (context, index) {
              return HomeStores(
                text: (people[index]),
              );
            },
          ),
        ),

        //Post=========================
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: people.length,
            itemBuilder: (context, index) {
              return HomePost(name: (people[index]));
            },
          ),
        )
      ]),
    );
  }
}
