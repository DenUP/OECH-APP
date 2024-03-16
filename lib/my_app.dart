import 'package:flutter/material.dart';
import 'package:oech/pages/session_1/Splash.dart';
import 'package:oech/pages/session_1/holder.dart';
import 'package:oech/pages/session_1/onboardginone.dart';
import 'package:oech/pages/session_1/onboarding2.dart';
import 'package:oech/pages/session_1/onboarding3.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/hld': (context) => const Holder(),
        '/onb1': (context) => const OnBoardginOne(),
        '/onb2': (context) => const OnBoardginTwo(),
        '/onb3':(context) => const OnBoardginThree(),
      },
    );
  }
}
