import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class WebScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List flags = [
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
    {
      'isLiked': false,
      'isReposted': false,
      'isSaved': false,
      'isFollowed': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final List<Image> images = [
      Image.asset('assets/images/1.png'),
      Image.asset('assets/images/2.png'),
      Image.asset('assets/images/3.png'),
      Image.asset('assets/images/4.png'),
      Image.asset('assets/images/5.png'),
      Image.asset('assets/images/6.png'),
      Image.asset('assets/images/7.png'),
      Image.asset('assets/images/8.png'),
      Image.asset('assets/images/9.png'),
      Image.asset('assets/images/10.png'),
    ];

    final List<String> names = [
      'Trunks',
      'Bardock',
      'Great Ape',
      'Raditz',
      'Vegito',
      'Guldo',
      'Gogeta',
      'Gotenks',
      'Roshi',
      'Vegeta',
    ];

    final List stories = [
      {'name': names[0], 'image': images[0]},
      {'name': names[1], 'image': images[1]},
      {'name': names[2], 'image': images[2]},
      {'name': names[3], 'image': images[3]},
      {'name': names[4], 'image': images[4]},
      {'name': names[5], 'image': images[5]},
      {'name': names[6], 'image': images[6]},
      {'name': names[7], 'image': images[7]},
      {'name': names[8], 'image': images[8]},
      {'name': names[9], 'image': images[9]},
    ];

    final List feed = [
      {'name': names[0], 'image': images[0], 'flags': flags[0]},
      {'name': names[1], 'image': images[1], 'flags': flags[1]},
      {'name': names[2], 'image': images[2], 'flags': flags[2]},
      {'name': names[3], 'image': images[3], 'flags': flags[3]},
      {'name': names[4], 'image': images[4], 'flags': flags[4]},
      {'name': names[5], 'image': images[5], 'flags': flags[5]},
      {'name': names[6], 'image': images[6], 'flags': flags[6]},
      {'name': names[7], 'image': images[7], 'flags': flags[7]},
      {'name': names[8], 'image': images[8], 'flags': flags[8]},
      {'name': names[9], 'image': images[9], 'flags': flags[9]},
    ];

    return Scaffold(
      appBar: AppBar(toolbarHeight: 5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              leading: const Icon(Icons.add),
              title: Image.asset(
                width: 175,
                'assets/images/Instagram_logo.png',
              ),
              actions: const [Icon(Icons.favorite_outline)],
              centerTitle: true,
            ),

            // Stories
            SizedBox(
              height: 100,
              child: ScrollConfiguration(
                behavior: WebScrollBehavior(),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (build) => Container(
                              color: Colors.black,
                              child: Center(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 450,
                                  ),
                                  child: Scaffold(
                                    appBar: AppBar(
                                      centerTitle: true,
                                      title: Text(stories[index]['name']),
                                    ),
                                    body: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          stories[index]['image'],
                                          SizedBox(height: 60),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 80,
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 217, 40, 126),
                                    Color.fromARGB(255, 253, 213, 34),
                                  ],
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                clipBehavior: Clip.hardEdge,

                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.all(5),

                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: stories[index]['image'],
                                ),
                              ),
                            ),

                            Text(stories[index]['name']),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Feed
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    height: 540,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                height: 42,
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: feed[index]['image'],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  top: 10,
                                ),
                                child: Text(
                                  feed[index]['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    flags[index]['isFollowed'] =
                                        !flags[index]['isFollowed'];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      202,
                                      200,
                                      200,
                                    ),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  height: 25,
                                  width: 75,
                                  alignment: Alignment.center,
                                  child: Text(
                                    flags[index]['isFollowed']
                                        ? 'Following'
                                        : 'Follow',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.more_vert),
                            ],
                          ),
                        ),

                        feed[index]['image'],

                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    flags[index]['isLiked'] =
                                        !flags[index]['isLiked'];
                                  });
                                },
                                child: Icon(
                                  flags[index]['isLiked']
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: flags[index]['isLiked']
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.mode_comment_outlined),
                              const SizedBox(width: 8),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    flags[index]['isReposted'] =
                                        !flags[index]['isReposted'];
                                  });
                                },
                                child: Icon(
                                  Icons.loop,
                                  color: flags[index]['isReposted']
                                      ? Colors.green
                                      : Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.send),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    flags[index]['isSaved'] =
                                        !flags[index]['isSaved'];
                                  });
                                },
                                child: Icon(
                                  flags[index]['isSaved']
                                      ? Icons.bookmark
                                      : Icons.bookmark_outline,
                                  color: flags[index]['isSaved']
                                      ? Colors.yellow
                                      : Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
