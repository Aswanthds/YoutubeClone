import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Core/constants.dart';
import 'package:youtube_clone_ui/data.dart';

class ShortsWidget extends StatelessWidget {
  const ShortsWidget({
    super.key,
    required this.ytdata, required this.index,

  });

  final YTdata ytdata;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 230,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  ytdata.shortsList.values
                      .elementAt(index)
                      .elementAt(2),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(colors: [
                    Colors.red.withOpacity(0.0),
                    kBlack
                  ])),
              child: Column(
                children: [
                  Text(
                    ytdata.shortsList.values
                        .elementAt(index)
                        .elementAt(0),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    ytdata.shortsList.values
                        .elementAt(index)
                        .elementAt(6),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}