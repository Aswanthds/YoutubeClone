import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/Screens/Add/add_screen.dart';
import 'package:youtube_clone_ui/Screens/Home/screen_home.dart';
import 'package:youtube_clone_ui/Screens/Library/screen_library.dart';
import 'package:youtube_clone_ui/Screens/Shorts/screen_shorts.dart';
import 'package:youtube_clone_ui/Screens/Subscription/screen_subscription.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

final _screens = [
  HomeScreen(),
  const ShortsScreen(),
  const AddScreen(),
   SubscriptionScreen(),
  const LibraryScreen()
];

int _selectedIndex = 0;

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: _screens
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() {
                _selectedIndex = index;
              }),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                  image: AssetImage(
                    "assets/Images/ytShorts.png",
                  ),
                  height: 24,
                  width: 24,
                  color: Colors.white,
                ),
              ),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
              label: "",
              icon: SizedBox(
                height: 45,
                width: 100,
                child: IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    grade: 3,
                    size: 50,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      isDismissible: true,
                      useSafeArea: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      context: context,
                      builder: (context) {
                        return Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Create",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close))
                                ],
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: Colors.grey.shade700,
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text("Create a short"),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: Colors.grey.shade700,
                                child: const Icon(
                                  Icons.file_upload_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              title: const Text("Upload a Video"),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: Colors.grey.shade700,
                                child: const Icon(
                                  Icons.stream,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text("Go Live"),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundColor: Colors.grey.shade700,
                                child: const Icon(
                                  Icons.post_add_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text("Create a Post"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              label: "Subscriptions",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: "Library",
            ),
          ]),
    );
  }
}
