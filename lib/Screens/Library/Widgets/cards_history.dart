import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/data.dart';

class SliceLibrary extends StatelessWidget {
  final Video videos;
  const SliceLibrary({
    super.key,
    required this.videos,
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
                Container(
                  height: 70,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38,width: 3),
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(videos.thumbnailUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videos.title,
                      maxLines: 2,
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
                        '${videos.author.username} '),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
