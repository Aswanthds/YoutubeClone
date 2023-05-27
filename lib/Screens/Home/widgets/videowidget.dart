import 'dart:developer';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Core/constants.dart';

import 'package:youtube_clone_ui/data.dart';

class VideoThumbSecWidget extends StatefulWidget {
  final Video video;
  const VideoThumbSecWidget({super.key, required this.video});

  @override
  State<VideoThumbSecWidget> createState() => _VideoThumbSecWidgetState();
}

class _VideoThumbSecWidgetState extends State<VideoThumbSecWidget> {
  var isSubscribed = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: ktransparent),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 220.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          widget.video.thumbnailUrl,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  right: 15.0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: kBlack.withOpacity(0.4)),
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      widget.video.duration,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: size.width - 5,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 2.0, bottom: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => log('Navigate to profile'),
                        child: CircleAvatar(
                          foregroundImage:
                              NetworkImage(currentUser.profileImageUrl),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    widget.video.title,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 3,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, top: 5.0),
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 3,
                                    style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9),
                                        fontWeight: FontWeight.w500),
                                    '${widget.video.author.username} • ${widget.video.viewCount} views • ${timeago.format(widget.video.timestamp)}  '),
                              ),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSubscribed = !isSubscribed;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: isSubscribed == true
                              ? MaterialStatePropertyAll(Colors.white)
                              : MaterialStatePropertyAll(Colors.red),
                          elevation: MaterialStatePropertyAll(5.0),
                          shadowColor: MaterialStatePropertyAll(
                              Colors.grey.withOpacity(0.5)),
                        ),
                        child: Text(
                          isSubscribed == true ? "Subscribed" : "Subscribe",
                          style: TextStyle(
                            color: isSubscribed == true
                                ? kBlack
                                : Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
