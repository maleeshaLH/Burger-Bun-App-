import 'package:burger_bun_app/screens/delevery.dart';
import 'package:burger_bun_app/screens/home-screen.dart';
import 'package:burger_bun_app/screens/location.dart';
import 'package:burger_bun_app/screens/other.dart';
import 'package:flutter/material.dart';


class MainNavPage extends StatefulWidget {
  @override
  _MainNavPageState createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageScreen(),
    DeliveryPage(),
    LocationPage(),
    OtherPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellow[800],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: 'Delivery'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Other'),
        ],
      ),
    );
  }
}
