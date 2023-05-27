import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Home/screen_home.dart';
import 'package:youtube_clone_ui/Screens/Widgets/nav_bar.dart';
import 'package:youtube_clone_ui/data.dart';

class VideoListItem extends StatefulWidget {
  final String handler;
  final String profilePic;
  final String vid;
  final String caption;
  final String comments;
  final String likes;

  const VideoListItem(
      {super.key,
      required this.handler,
      required this.profilePic,
      required this.vid,
      required this.caption,
      required this.comments,
      required this.likes});

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            height: size.height - 75,
            width: size.width,
            child: Image.asset(
              widget.vid,
              fit: BoxFit.cover,
            )),

        //top

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push (MaterialPageRoute(
                        builder: (context) => NavBar(),
                      ));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Shorts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
          ],
        ),

        //bottom
        Positioned(
          bottom: 15,
          left: 15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(widget.profilePic),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.handler,
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          onPressed: () {},
                          child: const Text(
                            "Subscribe",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                  Text(
                    widget.caption,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 5,
          child: Wrap(
            spacing: 20,
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Text(videos[0].likes)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.thumb_down,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Text(videos[0].dislikes)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.comment,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Text(videos[0].viewCount)
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Text("Share")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.read_more,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  Text("Remix")
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: ShapeDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/images/yt_logo.png")),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              )
            ],
          ),
        ),
      ],
    );
  }
}
