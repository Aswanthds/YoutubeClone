import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Widgets/bottom.dart';

import 'package:youtube_clone_ui/data.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset(
          "assets/Images/yt_logo.png",
        ),
      ),
      actions: [
        IconButton(
          iconSize: 25,
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 25,
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 25,
          icon: const Icon(Icons.search),
        ),
        IconButton(
          iconSize: 40.0,
          onPressed: () {},
          icon: CircleAvatar(
            foregroundImage: NetworkImage(currentUser.profileImageUrl),
          ),
        ),
      ],
      bottom: PreferredSize(preferredSize: Size.fromHeight(50.0),
      child: BottomBar()),
    );

    // bottom: const PreferredSize(
    //   preferredSize: Size.fromHeight(50.0),
    //   child: BottomBar(),
    // ),
  }
}
