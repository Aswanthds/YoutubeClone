import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Library/Widgets/Subs/filterChip.dart';
import 'package:youtube_clone_ui/Screens/Widgets/nav_bar.dart';
import 'package:youtube_clone_ui/data.dart';

class YourVideoPage extends StatelessWidget {
  const YourVideoPage({super.key});

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
              "Your Videos",
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  log("Explore");
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 5.0,
                    right: 10,
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade700,
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.transparent),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 4.5, bottom: 5),
                      child: Icon(
                        Icons.tune_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              FilterChipWidget(),
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/yt_logo.png",
            height: 120,
            width: 150,
          ),
          Text("Share Your Thoughts with anyone,oreveryone"),
          SizedBox(
            height: 20,
          ),
          Container(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueAccent),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Create",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      )),
    );
  }
}
