import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const Text('Tickets'),
    const Text('Profile'),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: appScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                label: 'Home',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
            ),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: 'Search',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
            ),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: 'Tickets',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)
            ),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: 'Profile',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ),

          ],
        )
    );
  }
}
