import 'dart:developer';

import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<String> categories = [
    "All",
    "Music",
    "Sports",
    "2018",
    "Flutter",
    "Love",
    "Coding",
    "Editing",
    "Brototype Malayalam",
  ];

  String selectedcategory = "All";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              bottom: 5.0,
            ),
            child: GestureDetector(
              onTap: () {
                log("Explore");
              },
              child: Ink(
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.shade700,
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.transparent),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: SizedBox(
              height: 30,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          Wrap(
              spacing: 6,
              children: categories
                  .map((e) => SizedBox(
                        height: 50,
                        child: FilterChip(
                          selectedColor: Colors.white,
                          showCheckmark: false,
                          selected: selectedcategory == e,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          label: Padding(
                            padding:
                                const EdgeInsets.only(top: 5.0, bottom: 2.0),
                            child: Text(
                              e,
                              style: TextStyle(
                                color: selectedcategory == e
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                          onSelected: (bool value) {
                            setState(() {
                              selectedcategory = e;
                            });
                          },
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
