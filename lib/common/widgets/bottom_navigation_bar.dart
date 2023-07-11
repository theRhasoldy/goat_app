import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/features/feed/presentation/screens/heart_page.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';
import 'package:goat_app/features/feed/presentation/screens/profile_page.dart';
import 'package:goat_app/features/feed/presentation/screens/trophy_page.dart';
import 'package:goat_app/models/user.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required Object currentUser}) : super(key: key);

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
          backgroundColor: Colors.black45,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.trophy),
              label: 'Trophy',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart),
              label: 'Likes',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              label: 'Profile',
            ),
          ],
        )
    );
  }
}



