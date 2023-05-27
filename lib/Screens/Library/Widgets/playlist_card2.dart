import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/data.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalPlayListCard extends StatelessWidget {
  final Video videos;
  final String title;

  const NormalPlayListCard({
    super.key,
    required this.videos,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Image.network(
              //   videos.thumbnailUrl,
              // ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.4),width: 4),
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(videos.thumbnailUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 48,
                child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    child: const Icon(Icons.playlist_add)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0,top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //textAlign: TextAlign.left,
                  title,
                  style:
                      GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11.5,
                    color: Colors.lightBlueAccent.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                  ),
                  videos.author.username,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
