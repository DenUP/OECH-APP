import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oech/pages/session2/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/image/Logo.png')),
    );
  }
}
