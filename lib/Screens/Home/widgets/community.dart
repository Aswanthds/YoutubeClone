import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/data.dart';

class CommunityPostWidget extends StatefulWidget {
  const CommunityPostWidget({super.key});

  @override
  State<CommunityPostWidget> createState() => _CommunityPostWidgetState();
}

class _CommunityPostWidgetState extends State<CommunityPostWidget> {
  var isSubscribed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Colors.white.withOpacity(0.4), width: 2.0)),
        height: 500,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                           CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(videos[0].author.profileImageUrl),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 20,
                            width: 150,
                            child: Text(
                              videos[0].author.username,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSubscribed = !isSubscribed;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: isSubscribed ==true 
                              ? const MaterialStatePropertyAll(Colors.white)
                              : const MaterialStatePropertyAll(Colors.red),
                          elevation: const MaterialStatePropertyAll(5.0),
                          shadowColor: MaterialStatePropertyAll(
                              Colors.grey.withOpacity(0.5)),
                        ),
                        child:  Text(
                          isSubscribed ==true 
                              ?"Subscribed"
                              : "Subscribe",
                          style: TextStyle(color:isSubscribed ==true 
                              ?Colors.black
                              : Colors.white,),
                        ),
                        
                      ),
                      GestureDetector(
                          onTap: () {}, child: const Icon(Icons.more_vert)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(videos[0].title),
                ],
              ),
              SizedBox(
                height: 300,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(videos[0].thumbnailUrl),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  
                },
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Comments"),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                height: 36,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}