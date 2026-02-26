import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:non_func_ig_cone/home.dart';
import 'package:non_func_ig_cone/profile.dart';
import 'package:non_func_ig_cone/reels.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Gram',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = const [Home(), Reels(), Profile()];
  late PageController _pageController;

  final List bottomNavbar = [
    [Icon(Icons.home), Icon(Icons.home_outlined)],
    [Icon(Icons.video_library), Icon(Icons.video_library_outlined)],
    [Icon(Icons.person), Icon(Icons.person_outline)],
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Scaffold(
            body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: screens,
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: 0 == selectedIndex
                      ? bottomNavbar[0][0]
                      : bottomNavbar[0][1],
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: 1 == selectedIndex
                      ? bottomNavbar[1][0]
                      : bottomNavbar[1][1],
                  label: 'Reels',
                ),
                BottomNavigationBarItem(
                  icon: 2 == selectedIndex
                      ? bottomNavbar[2][0]
                      : bottomNavbar[2][1],
                  label: 'Profile',
                ),
              ],
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
                _pageController.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
