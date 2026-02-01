import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  int currentPage = 0;

  final List<bool> isFollowed = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

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
      {'name': names[0], 'image': images[0], 'isFollowed': isFollowed[0]},
      {'name': names[1], 'image': images[1], 'isFollowed': isFollowed[1]},
      {'name': names[2], 'image': images[2], 'isFollowed': isFollowed[2]},
      {'name': names[3], 'image': images[3], 'isFollowed': isFollowed[3]},
      {'name': names[4], 'image': images[4], 'isFollowed': isFollowed[4]},
      {'name': names[5], 'image': images[5], 'isFollowed': isFollowed[5]},
      {'name': names[6], 'image': images[6], 'isFollowed': isFollowed[6]},
      {'name': names[7], 'image': images[7], 'isFollowed': isFollowed[7]},
      {'name': names[8], 'image': images[8], 'isFollowed': isFollowed[8]},
      {'name': names[9], 'image': images[9], 'isFollowed': isFollowed[9]},
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
              // Background Image
              reels[index]['image'],

              // Bottom Profile Section
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
                              isFollowed[index] = !isFollowed[index];
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
                              reels[index]['isFollowed']
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

              // Right Side Actions
              Positioned(
                right: 12,
                bottom: 80,
                child: Column(
                  children: [
                    // Like Button
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${(index + 1) * 123}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Comment Button
                    Column(
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${(index + 1) * 42}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Share Button
                    Icon(Icons.send, color: Colors.white, size: 32),
                    SizedBox(height: 24),

                    // More Options
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
