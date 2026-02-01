import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

List<bool> isFollowed = [
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
      'Gotenks3',
      'Gotenks1',
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

    List feed = [
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
      appBar: AppBar(toolbarHeight: 5),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  leading: Icon(Icons.add),
                  title: Image.asset(
                    width: 175,
                    'assets/images/Instagram_logo.png',
                  ),
                  actions: [Icon(Icons.favorite_outline)],
                  centerTitle: true,
                ),
                //
                //
                //
                //Stories
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
                                builder: (build) => Scaffold(
                                  appBar: AppBar(
                                    title: Text(stories[index]['name']),
                                  ),
                                  body: Center(
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 450,
                                      ),
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
                //
                //
                //
                //Feed
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: SizedBox(
                        height: 540,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 10),
                                  Container(
                                    height: 42,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: feed[index]['image'],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      feed[index]['name'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isFollowed[index] = !isFollowed[index];
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
                                        feed[index]['isFollowed']
                                            ? 'Unfollow'
                                            : 'Follow',
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                            ),
                            feed[index]['image'],

                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Row(
                                spacing: 8,
                                children: [
                                  Icon(Icons.favorite_outline),
                                  Icon(Icons.mode_comment_outlined),
                                  Icon(Icons.loop),
                                  Icon(Icons.send),
                                  Spacer(),
                                  Icon(Icons.bookmark_outline),
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
        ),
      ),
    );
  }
}
