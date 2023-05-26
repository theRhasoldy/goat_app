import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goat_app/features/feed/presentation/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.solidHeart),
          label: 'Heart',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.trophy),
          label: 'Trophy',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.solidNewspaper),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.solidUser),
          label: 'Profile',
        ),
      ],
    );
  }
}



