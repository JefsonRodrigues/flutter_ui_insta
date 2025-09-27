import 'package:flutter/material.dart';
import 'package:ui_insta/navigation/home/home_page.dart';
import 'package:ui_insta/navigation/pages/page2.dart';
import 'package:ui_insta/navigation/pages/page3.dart';
import 'package:ui_insta/navigation/pages/page4.dart';
import 'package:ui_insta/navigation/pages/page5.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;
  final _pages = <Widget>[
    const HomePage(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _index,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) {
          setState(() {
            _index = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home, size: 30, color: Colors.white),
            selectedIcon: Icon(
              Icons.home_filled,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search, size: 30, color: Colors.white),
            selectedIcon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.videocam,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.shop, size: 30),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person, size: 30),
            label: '',
          ),
        ],
      ),
    );
  }
}
