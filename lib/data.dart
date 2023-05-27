class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Aswanth DS',
  profileImageUrl:
      "https://yt3.ggpht.com/vwB7r5Q9i7eT7Qq3dHGIQSYV-43q69DD7e826_U22pMTtSxrTDH6O_-FOqPYF1MLlDapDOzGL3g=s176-c-k-c0x00ffffff-no-rj",
  subscribers: '62',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: '1CemcnStdLQ',
    author: currentUser,
    title: 'ചില അന്ധവിശ്വാസങ്ങള്‍.| Superstitions in India | Aswanth DS',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '5:47',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '97',
    likes: '10',
    dislikes: '4',
  ),
  Video(
    id: '1CemcnStdLQ',
    author: currentUser,
    title: 'ചില അന്ധവിശ്വാസങ്ങള്‍.| Superstitions in India | Aswanth DS',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '5:47',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '97',
    likes: '10',
    dislikes: '4',
  ),
  Video(
    id: '1CemcnStdLQ',
    author: currentUser,
    title: 'ചില അന്ധവിശ്വാസങ്ങള്‍.| Superstitions in India | Aswanth DS',
    thumbnailUrl:
        'https://img.freepik.com/premium-vector/youtube-thumbnail-background-design-with-text-editable_672856-143.jpg',
    duration: '5:47',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '97',
    likes: '10',
    dislikes: '4',
  ),
  Video(
    id: '1CemcnStdLQ',
    author: currentUser,
    title: 'ചില അന്ധവിശ്വാസങ്ങള്‍.| Superstitions in India | Aswanth DS',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '5:47',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '97',
    likes: '10',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'fO8rvSzH18Y',
    author: currentUser,
    title: 'Superstitions in India | Aswanth DS',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: '4KRJ7GAOuzs',
    author: currentUser,
    title: 'WhatsApp  Status reacted|Aswanth Ds.',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'Q-LpuXruQIw',
    author: currentUser,
    title: 'These Quotes need to Be Noticed |Aswanth DS',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];

class YTdata {
  //username, profilepic, img or vid, caption ,likes , comments ,views, thumbnail
  var shortsList = {
    0: [
      'Happy',
      'assets/Images/smiley.jpg',
      'assets/Images/waterFall.gif',
      'The glittering but calm water reminds me of sanity',
      '20M',
      '20K',
      '1.5M Views',
      'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    ],
    1: [
      'Abby Gale',
      'assets/Images/profile_pic2.jpg',
      'assets/Images/rubiksCube.gif',
      'Awesome rubiks cube',
      '2.5K',
      '100',
      '1.5M Views',
      'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    ],
    2: [
      'Roufus',
      'assets/Images/cat.jpg',
      'assets/Images/minions.gif',
      'Minions are ❤',
      '50M',
      '10K',
      '1.5M Views',
      'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg'
    ],
    3: [
      'The Stargazer',
      'assets/Images/profile_pic2.jpg',
      'assets/Images/universe.gif',
      'Life in an alternate universe',
      '10M',
      '30K',
      '1.5M Views',
      'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    ]
  };
}
