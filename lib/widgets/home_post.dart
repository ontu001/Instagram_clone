import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home_post/post_footer.dart';
import 'package:instagram_clone/widgets/home_post/post_header.dart';
import 'package:instagram_clone/widgets/post_reaction.dart';


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
        postHead(name: name),





        //post
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/65614/coast-beach-rock-stones-65614.jpeg?auto=compress&cs=tinysrgb&w=1600'),fit: BoxFit.cover)
          ),
        ),






        //Icons for post reaction, comment , sshare and save
       postReact(),






        //caption and liked by
        postFooter(name: name)

        //comments
      ],
    );
  }
}
