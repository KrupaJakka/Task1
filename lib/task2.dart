import 'package:flutter/material.dart';
import 'package:task1/screen3.dart';
import 'package:task1/screen.dart';
import 'package:task1/screen2.dart';
import 'package:task1/screen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    // Center(child: Text('Home Page', style: TextStyle(fontSize: 20))),
    Center(
      child: ShortsScreen(),
    ),
    Center(
      child: ShortsScreen1(),
    ),
    Center(
      child: ShortsScreen2(),
    ),
    Center(
      child: ShortsScreen3(),
    ),
    Center(
      child: ShortsScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            )
          ],
          backgroundColor: Colors.black,
          title: Text(
            "Shorts",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 0
                    ? Icons.home_filled
                    : Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
                label: 'Search',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_rounded,
                  size: 45,
                  color: Colors.white,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _selectedIndex == 3
                      ? Icons.subscriptions
                      : Icons.subscriptions_outlined,
                ),
                label: 'Subscriptions',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 4 ? Icons.person : Icons.person_outline),
                label: 'you',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
