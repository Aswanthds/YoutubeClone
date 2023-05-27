import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/data.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayListCard extends StatelessWidget {
  final Video videos;
  final String playlistType;
  final String title;
  final IconData icons;
  const PlayListCard({
    super.key,
    required this.videos,
    required this.title,
    required this.icons,
    required this.playlistType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.4),width: 4),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(videos.thumbnailUrl),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    width: 50,
                    height: 50,
                    left: 30,
                    top: 10,
                    child: Icon(icons),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 3),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.redAccent.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                      playlistType,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
