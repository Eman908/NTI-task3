import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 26,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.greenAccent,
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      items: const [
        BottomNavigationBarItem(
          label: 'الدردشات',
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          label: 'المجموعات',
          icon: Icon(
            Icons.groups,
          ),
        ),
        BottomNavigationBarItem(
          label: 'المكالمات',
          icon: Icon(
            Icons.call,
          ),
        ),
      ],
    );
  }
}
