import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Home/widgets/shorts.dart';

import 'package:youtube_clone_ui/Screens/Home/widgets/videowidget.dart';
import 'package:youtube_clone_ui/data.dart';

class SubscriptionScreen extends StatelessWidget {
   SubscriptionScreen({super.key});
  YTdata ytdata = YTdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(150.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 15,
                      direction: Axis.horizontal,
                      children: [
                        Channels(),
                        Channels(),
                        Channels(),
                        Channels(),
                        Channels(),
                      ],
                    ),
                  ),
                  BottomFilterSub(),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            VideoThumbSecWidget(video: videos[0]),
            SizedBox(
                      height: 260,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ytdata.shortsList.length,
                          itemBuilder: (context, index) {
                            return ShortsWidget(ytdata: ytdata, index: index,);
                          },
                        ),
                      ),
                    ),
          ]))
        ],
      ),
    );
  }
}

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50.0,
          height: 50.0,
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(currentUser.profileImageUrl),
          ),
        ),
        Text(
          currentUser.username,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}

class BottomFilterSub extends StatefulWidget {
  const BottomFilterSub({super.key});

  @override
  State<BottomFilterSub> createState() => _BottomFilterSubState();
}

List<String> categories = [
  "All",
  "Today",
  "Continue Watching",
  "Unwatched",
];
String selectedcategory = "All";

class _BottomFilterSubState extends State<BottomFilterSub> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 4,
        children: categories
            .map((e) => SizedBox(
                  height: 70,
                  child: FilterChip(
                    selectedColor: Colors.white,
                    showCheckmark: false,
                    selected: selectedcategory == e,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    label: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 2.0, right: 5.0),
                      child: Text(
                        e,
                        style: TextStyle(
                          color: selectedcategory == e
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                    onSelected: (bool value) {
                      setState(() {
                        selectedcategory = e;
                      });
                    },
                  ),
                ))
            .toList());
  }
}
