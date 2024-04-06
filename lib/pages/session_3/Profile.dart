import 'package:flutter/material.dart';

import '../../widgets/session_3/appbar_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefoult(
        titleText: 'Profile',
        button: true,
      ),
      backgroundColor: Colors.white,
      body: Text('dsa'),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
      ]),
    );
  }
}
