import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
   final int currentIndex;
   final ValueChanged<int> onTap;
   const BottomNavbar({
  super.key,
  required this.currentIndex,
  required this.onTap,
   });
@override
State<BottomNavbar> createState () => _BottomNavbarState ();
}
class _BottomNavbarState extends State<BottomNavbar> {
@override
  Widget build(BuildContext context) {
   return BottomNavigationBar(
    backgroundColor:Color(0xFF472426) ,
    currentIndex: widget.currentIndex,
    onTap: widget.onTap,
    type: BottomNavigationBarType.fixed ,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
    items: const [
      BottomNavigationBarItem(
       icon: Icon(Icons.home),
       label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search), 
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favorites', 
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'Profile',
      ),
    ],
  );
  }
}


