import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'add'),
        const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/reels.jpg',
              width: 40,
            ),
            label: 'Reels'),
        const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/saurabh.jpg'),
            ),
            label: 'user'),
      ],
    ));
  }
}
