import 'package:flutter/material.dart';
import 'package:oech/pages/session_3/user_profile.dart';

import '../../widgets/session_3/appbar_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedTab = 3;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Wallet',
    ),
    Text(
      'Index 2: Track',
    ),
    UserProfile(),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const AppBarDefoult(
      //   titleText: 'Profile',
      //   button: false,
      // ),
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes), label: 'Track'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_sharp), label: 'Profile'),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
