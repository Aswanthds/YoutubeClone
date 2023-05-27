import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Library/Screens/downloads.dart';
import 'package:youtube_clone_ui/Screens/Library/Screens/your_videos.dart';
import 'package:youtube_clone_ui/Screens/Library/Screens/yourclips.dart';
import 'package:youtube_clone_ui/Screens/Library/Screens/yourmovies.dart';
import 'package:youtube_clone_ui/Screens/Library/Widgets/cards_history.dart';
import 'package:youtube_clone_ui/Screens/Library/Widgets/playlist_card.dart';
import 'package:youtube_clone_ui/Screens/Library/Widgets/playlist_card2.dart';
import 'package:youtube_clone_ui/data.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5,top: 5),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
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
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return const RowLib(
                    icon: Icons.history,
                    title: 'History',
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Section2(),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 3),
                      child: Section3());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* Section 1  */

class RowLib extends StatelessWidget {
  final String title;
  final IconData icon;
  const RowLib({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(title),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.blueAccent.shade700,
                      fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SliceLibrary(
                videos: videos[0],
              ),
              SliceLibrary(
                videos: videos[1],
              ),
              SliceLibrary(
                videos: videos[2],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade800.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}

/* Section 2 */

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_play_outlined,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("PlayList"),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View all",
                style: TextStyle(
                    color: Colors.blueAccent.shade700,
                    fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlayListCard(
              videos: videos[0],
              title: 'Watch Later',
              icons: Icons.watch_later_outlined,
              playlistType: 'Private',
            ),
            PlayListCard(
              videos: videos[2],
              icons: Icons.thumb_up,
              title: 'Liked Videos',
              playlistType: 'Private',
            ),
            NormalPlayListCard(
              title: 'Contact',
              videos: videos[0],
            )
          ],
        ),
        Divider(
          thickness: 3,
          color: Colors.grey.shade800.withOpacity(0.5),
        ),
      ],
    );
  }
}

/* Section 3 */

class Section3 extends StatelessWidget {
  Section3({
    super.key,
  });

  List<String> title = [
    "Your Videos",
    "Downloads",
    "Your Movies",
    "Your Clips",
  ];

  List<IconData> icons = [
    Icons.ondemand_video,
    Icons.file_download_sharp,
    Icons.movie,
    Icons.cut,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 20,
        children: [
          TextButton.icon(
            onPressed: () {
              //YourVideoPage
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YourVideoPage(),
              ));
            },
            icon: Icon(
              icons[0],
              size: 25,
              color: Colors.white,
            ),
            label: SizedBox(
                child: Text(
              title[0],
              style: const TextStyle(color: Colors.white),
            )),
          ),
          // SizedBox(width: 50,),
          // Icon(Icons.arrow_forward_ios ,size: 18,),
          TextButton.icon(
            onPressed: () {
              //YourDownloadsPage
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YourDownloadsPage(),
              ));
            },
            icon: Icon(
              icons[1],
              size: 25,
              color: Colors.white,
            ),
            label: SizedBox(
                child: Text(
              title[1],
              style: const TextStyle(color: Colors.white),
            )),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YourMoviesPage(),
              ));
            },
            icon: Icon(
              icons[2],
              size: 25,
              color: Colors.white,
            ),
            label: SizedBox(
                child: Text(
              title[2],
              style: const TextStyle(color: Colors.white),
            )),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const YourClipsPage(),
              ));
            },
            icon: Icon(
              icons[3],
              size: 25,
              color: Colors.white,
            ),
            label: SizedBox(
                child: Text(
              title[3],
              style: const TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}

//child: Text(title ,style: TextStyle(fontSize: 18),  
// PlayListCard(icons: Icons.thumb_up, playlistType: '', title: '', videos: videos[0],
                  
//                 ),