import 'package:aplication/view/screens/home_page.dart';
import 'package:aplication/view/screens/jobs_screen.dart';
import 'package:aplication/view/screens/network_screen.dart';
import 'package:aplication/view/screens/notification_screen.dart';
import 'package:aplication/view/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List _screens = [HomePageScreen(),NetworkScreen(),PostScreen(),NotificationScreen(),JobsScreen()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.network_check_outlined),label: 'My Network'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded),label: 'Jobs')
        ],onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}