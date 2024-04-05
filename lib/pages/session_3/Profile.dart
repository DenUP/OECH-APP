import 'package:flutter/material.dart';
import 'package:oech/style/colors.dart';

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
      appBar: AppBarDefoult(
        titleText: 'Profile',
        button: true,
      ),
      backgroundColor: Colors.white,
    );
  }
}
