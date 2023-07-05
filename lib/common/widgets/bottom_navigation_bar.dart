import 'package:flutter/material.dart';
import 'package:goat_app/features/feed/presentation/screens/heart_page.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/profile_page.dart';
import 'package:goat_app/features/feed/presentation/screens/trophy_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    Home(),
    TrophyPage(),
    HeartPage(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Center(
       child:_pages[_currentIndex],
     ) ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )
    );
  }
}



