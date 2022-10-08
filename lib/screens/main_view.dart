import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:recipe_0/screens/navigator_screens/home_view.dart';
import 'package:recipe_0/screens/tickets_view.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  var selectedIndex = 0;

  static final List<Widget> _widgetNavigator = [
    const HomeView(),
    const Text('Search'),
    const Text('Ticket'),
    const Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetNavigator[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(

          //to make the bottom bar not to move when pressed
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });

            log('index : $selectedIndex');
          },
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              // activeIcon: Icon(Icons.search_off_sharp),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket),
              label: 'Ticket',
              //activeIcon: Icon(Icons.search_off_sharp),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              // activeIcon: Icon(Icons.search_off_sharp),
            ),
          ]),
    );
  }
}
