// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Core/constants.dart';
import 'package:youtube_clone_ui/Screens/Home/widgets/community.dart';
import 'package:youtube_clone_ui/Screens/Home/widgets/shorts.dart';
import 'package:youtube_clone_ui/Screens/Home/widgets/videowidget.dart';
import 'package:youtube_clone_ui/Screens/Widgets/app_bar_home.dart';

import 'package:youtube_clone_ui/Screens/Widgets/bottom.dart';

import 'package:youtube_clone_ui/data.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'dart:developer';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  YTdata ytdata = YTdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                VideoThumbSecWidget(video: videos[0]),
                VideoThumbSecWidget(video: videos[1]),
                Divider(
                  thickness: 5.0,
                  color: kgrey.withOpacity(0.5),
                  indent: MediaQuery.of(context).size.width % 90,
                  endIndent: MediaQuery.of(context).size.width % 90,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const[
                          Image(
                            image: AssetImage(
                              "assets/Images/ytShorts.png",
                            ),
                            height: 24,
                            width: 24,
                            color: kRedColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Shorts",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
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
                  ],
                ),
                Divider(
                  thickness: 5.0,
                  color: kgrey.withOpacity(0.5),
                  indent: MediaQuery.of(context).size.width % 90,
                  endIndent: MediaQuery.of(context).size.width % 90,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                VideoThumbSecWidget(video: videos[2]),
                VideoThumbSecWidget(video: videos[3]),
                // Divider(
                //   thickness: 5.0,
                //   color: kgreyop,
                //   indent: MediaQuery.of(context).size.width % 90,
                //   endIndent: MediaQuery.of(context).size.width % 90,
                // ),

                const CommunityPostWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}


