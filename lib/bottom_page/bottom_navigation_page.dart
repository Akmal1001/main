import 'package:aplication/screens/account_page.dart';
import 'package:aplication/screens/cart_page.dart';
import 'package:aplication/screens/home_page.dart';
import 'package:aplication/screens/message_page.dart';
import 'package:aplication/screens/wishlist_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List _screens = [
    HomePage(),
    CartPage(),
    MessagePage(),
    WishlistPage(),
    AccaountPage()
  ];
  List<PreferredSizeWidget> _appBars = [
    AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Man',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      leading: Icon(Icons.arrow_back),
        actions: [
        Icon(Icons.settings,color: Colors.black,)
      ],
    ),
    AppBar(
      leading: Icon(Icons.arrow_back),
    ),
    AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text('Message',style: TextStyle(color: Colors.black),),
      iconTheme: IconThemeData(color: Colors.black),
      leading: Icon(Icons.arrow_back),
      actions: [
        Icon(Icons.notifications,color: Colors.black,)
      ],
    ),
    AppBar(
      leading: Icon(Icons.arrow_back),
    ),
    AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Shaeen Uddin Ahmad',
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      leading: Icon(Icons.arrow_back),
    )
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentIndex],
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: 'Account')
        ],onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
