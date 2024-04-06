import 'package:flutter/material.dart';
import 'package:oech/pages/session_1/onboardgin1.dart';
import 'package:oech/pages/session_1/onboardgin2.dart';
import 'package:oech/pages/session_1/splash.dart';
import 'package:oech/pages/session_3/Profile.dart';
import 'package:oech/presentation/style/colors.dart';
import 'package:oech/style/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              selectedItemColor: colors.mainColor,
              unselectedItemColor: Colorss.FieldColors)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/onb1': (context) => const OnboardingOne(),
        '/onb2': (context) => const OnBoardginTwo(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
