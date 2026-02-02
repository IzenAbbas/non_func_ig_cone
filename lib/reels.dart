import 'package:flutter/material.dart';
import 'dart:math';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  int currentPage = 0;
  Random random = Random();
  List counts = [
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
    {'likes': 0, 'comments': 0, 'reposts': 0, 'saves': 0},
  ];
  final List flags = [
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
    {
      'isLiked': false,
      'isFollowd': false,
      'isSaved': false,
      'isReposted': false,
    },
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < counts.length; i++) {
      counts[i]['likes'] = random.nextInt(10000);
      counts[i]['comments'] = random.nextInt(10000);
      counts[i]['reposts'] = random.nextInt(10000);
      counts[i]['saves'] = random.nextInt(10000);
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Image> images = [
      Image.asset('assets/images/1.png', fit: BoxFit.cover),
      Image.asset('assets/images/2.png', fit: BoxFit.cover),
      Image.asset('assets/images/3.png', fit: BoxFit.cover),
      Image.asset('assets/images/4.png', fit: BoxFit.cover),
      Image.asset('assets/images/5.png', fit: BoxFit.cover),
      Image.asset('assets/images/6.png', fit: BoxFit.cover),
      Image.asset('assets/images/7.png', fit: BoxFit.cover),
      Image.asset('assets/images/8.png', fit: BoxFit.cover),
      Image.asset('assets/images/9.png', fit: BoxFit.cover),
      Image.asset('assets/images/10.png', fit: BoxFit.cover),
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

    final List reels = [
      {'name': names[0], 'image': images[0], 'isFollowed': flags[0]},
      {'name': names[1], 'image': images[1], 'isFollowed': flags[1]},
      {'name': names[2], 'image': images[2], 'isFollowed': flags[2]},
      {'name': names[3], 'image': images[3], 'isFollowed': flags[3]},
      {'name': names[4], 'image': images[4], 'isFollowed': flags[4]},
      {'name': names[5], 'image': images[5], 'isFollowed': flags[5]},
      {'name': names[6], 'image': images[6], 'isFollowed': flags[6]},
      {'name': names[7], 'image': images[7], 'isFollowed': flags[7]},
      {'name': names[8], 'image': images[8], 'isFollowed': flags[8]},
      {'name': names[9], 'image': images[9], 'isFollowed': flags[9]},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reels.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              reels[index]['image'],

              Positioned(
                bottom: 80,
                left: 20,
                right: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: reels[index]['image'],
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          reels[index]['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 12),
                        InkWell(
                          onTap: () {
                            setState(() {
                              flags[index]['isFollowd'] =
                                  !flags[index]['isFollowd'];
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              flags[index]['isFollowd']
                                  ? 'Following'
                                  : 'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      'See more',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),

              Positioned(
                right: 12,
                bottom: 80,
                child: Column(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              flags[index]['isLiked'] =
                                  !flags[index]['isLiked'];
                            });
                          },
                          child: Icon(
                            !flags[index]['isLiked']
                                ? Icons.favorite_border
                                : Icons.favorite,
                            color: flags[index]['isLiked']
                                ? Colors.red
                                : Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${counts[index]['likes'] + (!flags[index]['isLiked'] ? 0 : 1)}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Column(
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${counts[index]['comments']}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              flags[index]['isReposted'] =
                                  !flags[index]['isReposted'];
                            });
                          },
                          child: Icon(
                            Icons.loop_outlined,
                            color: flags[index]['isReposted']
                                ? Colors.green
                                : Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${counts[index]['reposts'] + (!flags[index]['isReposted'] ? 0 : 1)}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    Icon(Icons.send, color: Colors.white, size: 32),
                    SizedBox(height: 24),
                    Column(
                      children: [
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
                                : Colors.white,
                            size: 32,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${counts[index]['saves'] + (!flags[index]['isSaved'] ? 0 : 1)}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Icon(Icons.more_vert, color: Colors.white, size: 32),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
