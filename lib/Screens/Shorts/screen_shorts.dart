import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Shorts/Widgets/video_list_item.dart';
import 'package:youtube_clone_ui/data.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

YTdata ytData = YTdata();

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
            scrollDirection: Axis.vertical,
        itemCount: ytData.shortsList.length,
        itemBuilder: (context, index) {
          return VideoListItem(
            handler: ytData.shortsList.values.elementAt(index).elementAt(0),
            profilePic: ytData.shortsList.values.elementAt(index).elementAt(1),
            vid: ytData.shortsList.values.elementAt(index).elementAt(2),
            caption: ytData.shortsList.values.elementAt(index).elementAt(3),
            likes: ytData.shortsList.values.elementAt(index).elementAt(4),
            comments: ytData.shortsList.values.elementAt(index).elementAt(5),
          );
        },
      )),
    );
  }
}
