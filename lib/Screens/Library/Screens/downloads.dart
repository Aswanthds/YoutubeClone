import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Library/Widgets/Subs/filterChip.dart';
import 'package:youtube_clone_ui/Screens/Widgets/nav_bar.dart';
import 'package:youtube_clone_ui/data.dart';

class YourDownloadsPage extends StatelessWidget {
  const YourDownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 300,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Downloads",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
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
            onPressed: () {},
            iconSize: 25,
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/yt_logo.png",
                  opacity: AlwaysStoppedAnimation(0.5),
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Videos you Download will appear here",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                )
              ],
            ),
          ),
          FittedBox(
            child: Listwidget(
              suggestedVideos: suggestedVideos[0],
            ),
          ),
          FittedBox(
            child: Listwidget(
              suggestedVideos: suggestedVideos[1],
            ),
          ),
          FittedBox(
            child: Listwidget(
              suggestedVideos: suggestedVideos[2],
            ),
          )
        ],
      ),
    );
  }
}

class Listwidget extends StatelessWidget {
  final Video suggestedVideos;
  const Listwidget({
    super.key,
    required this.suggestedVideos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white60),
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(suggestedVideos.thumbnailUrl),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 5,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    suggestedVideos.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.5),
                      suggestedVideos.author.username),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cloud_download_outlined,
                    size: 30,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
