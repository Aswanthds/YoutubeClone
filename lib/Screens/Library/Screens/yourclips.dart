import 'package:flutter/material.dart';

class YourClipsPage extends StatelessWidget {
  const YourClipsPage({super.key});

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
                "Your Clips",
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
    );
  }

}