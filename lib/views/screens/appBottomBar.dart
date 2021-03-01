import 'package:flutter/material.dart';
import 'package:manahil/views/widgets/appTheme.dart';

class ManahilBottomBar extends StatefulWidget {
  static const routeName = '/ManahilBottomBar';
  @override
  _ManahilBottomBarState createState() => _ManahilBottomBarState();
}

class _ManahilBottomBarState extends State<ManahilBottomBar> {
  int _selectedIndex = 0;

  void _onItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: appTheme().primaryColorDark,
        unselectedItemColor: appTheme().bottomAppBarColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Course'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Person'),
          ),
        ],
        onTap: _onItemTap,
        currentIndex: _selectedIndex,
      ),
      body: [
        Icon(Icons.home_outlined),
        Icon(Icons.calendar_today),
        Icon(Icons.notifications),
        Icon(Icons.person_outline),
      ].elementAt(_selectedIndex),
    );
  }
}
